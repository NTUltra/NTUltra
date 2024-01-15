if (boltMarrowed && eagleEyed)
{
	eagleEyed = false;
	move_bounce_solid(false);
}
else
{
	speed = 0
	instance_create(x,y,Dust)
	instance_destroy();
}