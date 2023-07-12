event_inherited();
if instance_exists(Player)
{
	with instance_create_depth(x,y,depth,EnemyCrownOfInversion)
	{
		team = other.team;
		creator = Player;
	}
}
else
{
	with instance_create_depth(x,y,depth,QueueSecondWaveGlutton)
	{
		team = other.team;	
	}
}