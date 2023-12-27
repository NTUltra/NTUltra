/// @description Go time
if !instance_exists(SpiralCont)
{
	var wait = 50;
	if instance_exists(Player) && Player.skill_got[29]
	{
		wait += 50;
		scrGiveSnooze();
	}
	alarm[1] = 900;
	image_speed = 0.4;
	alarm[4] = 90 + wait;//120 before + 90
	alarm[2] = 30 + wait;
	alarm[5] = 2 + wait;
}
else
{
	alarm[7] = 2;	
}