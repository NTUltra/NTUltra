scrDrop(100,50)
scrDrop(50,0);
scrBossKill();
if !sleeping
{
	ammo = maxAmmo
	event_perform(ev_alarm,2);
	var d = direction;
	repeat(3)
	{
		instance_create(x + lengthdir_x(32,d),y + lengthdir_y(32,d),JellyExplosion);
		d += 120;
	}
	instance_create(x,y,JellyExplosion);
}
event_inherited()
with myThunderStrikeTarget
{
	instance_destroy();	
}

if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(HyenaBoss) == 1
	with MusCont
	{
		scrStopSong();
		if instance_exists(Player) && Player.area == 2
		{
			song = mus2;
			amb = amb2;
			if !audio_is_playing(song)
			{
				scrPlaySong();
			}
			if !audio_is_playing(amb)
			{
				scrPlayAmbience();
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