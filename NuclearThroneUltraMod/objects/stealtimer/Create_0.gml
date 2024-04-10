/// @description Steal Timer
alarm[0] = 560;
if instance_exists(Player) && Player.skill_got[29]
{
	alarm[0] *= 2;	
}