/// @description Rotate!
if alarm[1] > 0
{
	alarm[2] = 1;
	motion_add(direction,1);
	if alarm[3] < 1
		motion_add(direction+turnDir,min(speed * 0.75,2.5));
}
