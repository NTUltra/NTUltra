scrDrop(100,0)
scrDrop(50,0)
event_inherited()
with BecomeEnemyBulletDrops
	instance_destroy();
scrBossKill();
instance_create(x,y-16,GoldChest);
if existTime > 15
{
	with instance_create(x,y,GreenExplosion)
		team = other.team
	var ang = 0;
	var len = 24;
	var am = 5;
	var angStep = 72;
	snd_play(sndExplosionL);
	repeat(am) {
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),Explosion)
			team = other.team;
		
		ang += angStep;
	}
}
with WeaponDeposit {
	with instance_create(other.x,other.y,WepPickup)
	{
		persistent = true;
		scrWeapons()
		wep = other.wep;
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		isPermanent = other.isPermanent;
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
	}
	instance_destroy();
}
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(BigFish) == 1
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}