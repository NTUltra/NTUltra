/// @description loop shooting

with instance_create_depth(x,y,depth + 1,proj)
{
	motion_add(other.direction+random(20)-10,3)
	image_angle = direction
	team = other.team
}



alarm[0]=25;