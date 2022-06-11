/// @description Split

// Inherit the parent event
event_inherited();

with instance_create(x,y,SeekerBolt)
{
	motion_add(other.direction+200,3+random(3))
	image_angle = direction
	team = other.team
}
with instance_create(x,y,SeekerBolt)
{
	motion_add(other.direction+160,3+random(3))
	image_angle = direction
	team = other.team
}