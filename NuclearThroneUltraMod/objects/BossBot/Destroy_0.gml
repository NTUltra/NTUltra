scrDrop(100,0)
scrDrop(50,0)
event_inherited()
with BecomeEnemyBulletDrops
	instance_destroy();
scrBossKill();
if object_index == BossBot {
	with UberCont {
		if isValidGamemodeToUnlock()
		{
			boss_bot_normal += 1;
			scrHasUnlockedMarksMan();
			scrSave();
		}
	}
}
instance_create(x,y+32,GoldChest);
instance_create(x,y-16,GoldChest);
instance_create(x,y+16,GoldChest);
if instance_exists(Player) && Player.skill_got[23]
{
	instance_create(x,y+32,GoldChest);
}
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
var curseIt = 0;
if object_index == CursedBossBot
	curseIt = 1;
with WeaponDeposit {
	with instance_create(other.x,other.y,WepPickupForOneWepOnly)
	{
		persistent = true;
		scrWeapons()
		wep = other.wep;
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		isPermanent = other.isPermanent;
		visitedPortals = 0;
		hasBeenEaten = other.hasBeenEaten;
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = curseIt
		sprite_index = wep_sprt[wep]
	}
	instance_destroy();
}
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss)
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

scrStopSong();
song = musUltraBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}