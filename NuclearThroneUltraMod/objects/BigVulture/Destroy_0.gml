scrDrop(100,0)
scrDrop(30,0)
scrDrop(20,0)
with GraveyardEntrance
{
	with instance_create(x,y,Portal)
	{
		type = 1
		alarm[1] += 30;
	}
	with Player
	{
		if area != 100
			area = 126;
		inverted = false;
		lastarea = 126;
		subarea = 0;
	}
	with PlayerSpawn
	{
		if area != 100
			area = 126;
		inverted = false;
		lastarea = 126;
		subarea = 0;
	}
	with enemy
	{
		my_health = 0;	
	}
}
if (UberCont.area == 121 || UberCont.area == 10 || UberCont.area == 127 || UberCont.area == 126) || (instance_exists(Player) && (Player.area == 121 || Player.area == 10 || Player.area == 127 || Player.area == 126))
	scrDefeatedRequiredBoss(secretChallengeBosses.bigVulture);
if !isOneWeaponOnlyModes() && !instance_exists(SurvivalWave) && !instance_exists(InvaderBossSpawnPortal)
{
	with instance_create(x-8,y,WepPickup)
	{
		scrWeapons()
		SetSeedWeapon();
		wep = scrDecideWep(choose(1,2), 1000, 0)
		scrAddNewWeaponDrop(wep);
		SetSeed();
		name = wep_name[wep]
		ammo = 30
		curse = 0;
		if instance_exists(GraveyardEntrance)
		{
			with GraveyardEntrance
				alarm[1] = 0;
			curse = 1;
		}
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
		scrStopSong();
		song = musUltraBossWin
		snd_play_2d(song)
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

	}