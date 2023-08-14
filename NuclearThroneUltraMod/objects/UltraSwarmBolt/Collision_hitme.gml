/// @description Spawn a regular swarm after finishing

// Inherit the parent event
event_inherited();

if hits < 1
{
	with instance_create(x,y,SwarmBolt)
	{
		team = other.team;
		direction = other.direction + 180;
	}
}