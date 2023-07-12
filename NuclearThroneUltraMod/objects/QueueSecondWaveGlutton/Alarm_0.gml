/// @description Try to find player and spawn
if instance_exists(Player)
{
	with instance_create_depth(x,y,depth,EnemyCrownOfInversion)
	{
		team = other.team;
		creator = Player;
	}
	instance_destroy();
}
else
{
	alarm[0] = 5;
}