/// @description Kill revive circle when owner died
if (owner == -1 || !instance_exists(owner))
{
	instance_destroy();	
}
alarm[1] = 4;//Only check every other frame