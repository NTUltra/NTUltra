/// @description Can we start the real fight now?
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 72
	{
		image_speed = 0.4;
		BackCont.shake += 10;
		snd_play(sndIntroFadeIn);
		snd_play(sndBallBossWake);
		with MusCont
		{
			audio_stop_sound(song);
			song = musUltraChimera1;
			snd_loop(song);
			audio_sound_gain(song, clamp(UberCont.opt_musvol*1.05,0, 1), 0);
		}
	}
	else
	{
		alarm[2] = 1;
	}
}
else
{
	alarm[2] = 2;	
}
