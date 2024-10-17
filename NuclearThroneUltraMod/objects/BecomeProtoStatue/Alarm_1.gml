/// @description Keep up hp
if instance_exists(GenCont) || instance_exists(SpiralCont)
{
	my_health = maxhealth;
	alarm[1] = 1;
}