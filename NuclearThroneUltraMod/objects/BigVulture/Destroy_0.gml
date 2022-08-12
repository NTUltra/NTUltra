scrDrop(100,100)
scrDrop(20,0)
if UberCont.area == 10 || Player.area == 121
	scrDefeatedRequiredBoss(secretChallengeBosses.bigVulture);
if !isOneWeaponOnlyModes() && !instance_exists(SurvivalWave) && !instance_exists(InvaderBossSpawnPortal)
{
	with instance_create(x-8,y,WepPickup)
	{
		scrWeapons()
		wep = scrDecideWep(2, 1000, 0)
		name = wep_name[wep]
		ammo = 50
		curse = 0;
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
	}
}
event_inherited()
scrBossKill();
repeat(5+irandom(6))
{
	with instance_create(x,y,RavenFeather)
		image_index = 5;
}

repeat(4+irandom(2))
{
	with instance_create(x,y,RavenFeather)
		image_index = 6
}

if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(BigVulture) == 1
	with MusCont
	{
		audio_stop_sound(song);
		song = musBossWin
		snd_play_2d(song)
		audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
		audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
		audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

	}