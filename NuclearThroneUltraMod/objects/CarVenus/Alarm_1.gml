/// @description Keep alive
my_health = maxhealth;
if instance_exists(GenCont) || instance_exists(SpiralCont)
{
	alarm[1] = 2;
}