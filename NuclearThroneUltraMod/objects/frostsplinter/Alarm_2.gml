/// @description Frost
alarm[2] = 4;
with instance_create(x,y,IceFlame)
{
	speed = other.speed*0.25;
	direction = other.direction;
	team = other.team;	
}
