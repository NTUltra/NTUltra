event_inherited();
Speed=1;
ammo = 0;
totalSpeed = 2;
with RocketGloveBurst
{
	if id != other.id
	{
		instance_destroy();
		other.ammo += ammo;
	}
}