/// @description Can we start the real fight now?
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 72
	{
		image_speed = 0.4;
		BackCont.shake += 10;
		snd_play(sndIntroFadeIn);
		snd_play(sndBallBossWake);
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
