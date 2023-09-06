/// @description loop shooting

with instance_create(x,y,proj)
{
	motion_add(other.direction+random(20)-10,3)
	image_angle = direction
	team = other.team
}



alarm[0]=14;

