/// @description Kill the maggots and the bullets
with enemy
{
	my_health = 0;
	prevhealth = 0;
}
with projectile
{
	if team != 2
		instance_destroy(id,false);
}
instance_destroy();