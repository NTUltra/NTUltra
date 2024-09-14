/// @description End sound
if instance_number(GhostDrillBurst) == 1
{
	audio_stop_sound(sndGhostDrillLoop);
	snd_play_fire(sndGhostDrillEnd);
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	repeat(3)
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(aimDirection+random_range(20,-20),2);
		}
	}
	repeat(3)
	{
		with instance_create(x,y,GhostEffect)
		{
			motion_add(aimDirection+random_range(20,-20),2);
		}
	}
}