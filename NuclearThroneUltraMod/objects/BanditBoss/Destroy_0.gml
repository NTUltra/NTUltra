if oasis
	raddrop = min(raddrop,5);
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(BanditBoss) == 1
with MusCont
{
	audio_stop_sound(song);
	if instance_exists(Player) && Player.area == 2
	{
		song = mus2;
		amb = amb2;
		if !audio_is_playing(song)
		{
			snd_loop(song);
		}
		if !audio_is_playing(amb)
		{
			snd_loop(amb);
		}
	}
	else
	{
		song = musUltraBossWin
		snd_play_2d(song)
	}
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
repeat(2)
scrDrop(100,0)

scrDrop(0,50)

scrBossKill();


if GetPlayerLoops() > 0 && UberCont.gamemode_have[13] == 0 && isValidGamemodeToUnlock()
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
		scrAddNewWeaponDrop(wep);
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
		scrAddNewWeaponDrop(wep);
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
	if instance_exists(Player) && Player.oasis == false
	{
		instance_create(x,y,Portal);
		with enemy
		{
			my_health = 0;
			prevhealth = 0;
		}
	}
	with Player
		oasis=true;
}
