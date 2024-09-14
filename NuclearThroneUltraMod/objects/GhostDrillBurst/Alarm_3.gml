/// @description Sound it up
if !audio_is_playing(sndGhostDrillLoop)
{
	snd_loop(sndGhostDrillLoop);
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	repeat(3)
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(aimDirection+random_range(40,-40),3);
		}
	}
}