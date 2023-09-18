if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(BanditBoss) == 1 && (!instance_exists(Player) || (instance_exists(Player) && Player.area != 2))
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
repeat(2)
scrDrop(200,0)

scrDrop(0,10)

scrBossKill();


if GetPlayerLoops() > 0 && UberCont.gamemode_have[13] == 0 && (scrIsGamemode(0) || scrIsGamemode(9))
{
	//Drop rocket glove
	var noRocketGloveDropped = true;
	with WepPickup
	{
		if wep == 239
			noRocketGloveDropped = false;
	}
	if noRocketGloveDropped
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = 239
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
	}
}
if(random(200)<1 && GetPlayerLoops() < 1){
	//drop oopsgun?
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = 69
		name = wep_name[69]
		ammo = 0
		type = wep_type[69]
		curse = 0
		sprite_index = wep_sprt[69]
	}
}
event_inherited()

if oasis && !instance_exists(SurvivalWave)
{
	if instance_exists(Player) && Player.oasis = false
		instance_create(x,y,Portal);
with Player
oasis=true;
}
