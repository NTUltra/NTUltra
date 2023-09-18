scrDrop(100,0)
scrDrop(50,4)
speed = 0;
event_inherited()

if instance_number(myKind) < 2 && !instance_exists(SurvivalWave) && !instance_exists(WantBoss)
{
	with MusCont
    {
		audio_stop_sound(song);
		if instance_exists(Player) 
		{
			if Player.area == 6
				song = mus6;
			else if Player.area == 112
				song = mus106b;
		}
		snd_loop(song)
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
	}
}
else if instance_number(myKind) == 2
{
	with myKind
	{
		snd_dead = sndTechnomancerDead;
		//spr_dead = sprTechnoMancerLastDead;
	}
	
}