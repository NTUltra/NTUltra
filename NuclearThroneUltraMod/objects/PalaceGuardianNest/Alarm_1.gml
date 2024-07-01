/// @description Check if throne is here
if instance_exists(NuclearThrone1)
{
	if NuclearThrone1.y > y - 64
	{
		my_health = 0;
		maxhealth = 0;
		instance_destroy();
	}
}
alarm[1] = 10;	