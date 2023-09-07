/// @description Fire Splinters
alarm[5] = 2;

angle += angleDir;
with instance_create(x,y,Splinter)
{
	motion_add(other.angle,22);
	image_angle = direction;
	team = other.team;
}
with instance_create(x,y,Splinter)
{
	motion_add(other.angle + 180,22);
	image_angle = direction;
	team = other.team;
}