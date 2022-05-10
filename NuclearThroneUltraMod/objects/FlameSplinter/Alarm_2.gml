/// @description Flame
alarm[2] = 2;
with instance_create(x,y,Flame)
{
	speed = other.speed*0.25;
	direction = other.direction;
	team = other.team;	
}
