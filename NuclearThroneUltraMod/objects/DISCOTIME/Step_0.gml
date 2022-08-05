/// @description Toggle
if instance_exists(Player) && Player.wep == 396
{
	if !visible
	{
		room_speed = 35;
		audio_resume_sound(sndChubbyEmuSong);
		if !audio_is_playing(sndChubbyEmuSong)
		{
			snd_loop(sndChubbyEmuSong);
		}
		audio_sound_gain(sndChubbyEmuSong, max(0, sqrt(UberCont.opt_musvol)), 0);
		with MusCont
		{
			audio_pause_sound(song);
			audio_pause_sound(amb);
			audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)*2), 0);
		}
	}
	visible = true;
	wave++;
	alpha = alphaOrigin +(sin(wave)*0.1);
	hue += spd;
	theColour = make_color_hsv(hue,250,250);
	if hue >= 360
		hue = 1;
	spd = ogspd + cos(spd);
}
else if visible
{
	room_speed = UberCont.normalGameSpeed;
	visible = false;
	audio_pause_sound(sndChubbyEmuSong);
	with MusCont
	{
		audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
		audio_resume_sound(song);
		audio_resume_sound(amb);
	}
}

var al = ds_list_size(sheep);
for (var i = 0; i < al; i++) {
	if (sheep[| i].time <= 0)
	{
		ds_list_delete(sheep,i);
		i = al;
	}
	else
	{
		sheep[| i].time --;
		sheep[| i].xx += sheep[| i].xspd;
		sheep[| i].yy += sheep[| i].yspd;
		sheep[| i].rot += sheep[| i].rotationspeed;
		if sheep[| i]. time < 6
			sheep[| i].alpha -= 0.2;
		else if sheep[| i].alpha < 1
			sheep[| i].alpha += 0.2;
	}
}