/// @description End sound
if instance_number(ChainSawBurst) == 1
{
	audio_stop_sound(sndChainSawLoop);
	snd_play_fire(sndChainSawEnd);
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	repeat(3)
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(aimDirection+random_range(20,-20),2);
		}
	}
}