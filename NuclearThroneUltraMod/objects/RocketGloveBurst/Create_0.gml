event_inherited();
Speed=1;
ammo = 0;
totalSpeed = 2;
disablePlayerMove = false;
with RocketGloveBurst
{
	if id != other.id
	{
		other.disablePlayerMove = disablePlayerMove;
		instance_destroy();
		other.ammo += ammo;
	}
}