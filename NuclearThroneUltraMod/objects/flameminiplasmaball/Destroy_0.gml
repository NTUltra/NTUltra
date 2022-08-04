event_inherited()
with instance_create(x,y,Flame)
{
	team = other.team
	image_speed = 0.5;
	motion_add(other.direction,1+random(3));
}