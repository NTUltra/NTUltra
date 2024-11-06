/// @description Frost
if speed > 1
{
	alarm[2] = 5;
	with instance_create(x,y,IceFlame)
	{
		speed = other.speed*0.25;
		direction = other.direction;
		team = other.team;	
	}
}