/// @description Lerpage
if instance_exists(CampFireOff)
{
	x = lerp(xstart,CampFireOff.x,lerpTime);
	y = lerp(ystart,CampFireOff.y,lerpTime);
	lerpTime += 0.01;
	if lerpTime >= 1
	{
		lerpTime = 1;
		sprite_index = sprThrone2EndEnd;
		image_index = 0;
		alarm[1] = 90;
		with MusCont
		{
			scrStopSong();
			song = musThemeP;
			snd_play(song);
			audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
		}
	}
	else
	{
		alarm[0] = 1;	
	}
}