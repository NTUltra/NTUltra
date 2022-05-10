/// @description Hitting back nade
with other
{
	if team != other.team
	{
	team=other.team;
	direction = other.direction
	speed = 12
	friction = 0.1
	alarm[1] = 6
	Sleep(10);
	BackCont.shake += 5;
		with instance_create(x,y,Deflect)
			image_angle = other.direction
			
	}
}
if (instance_exists(Player) && Player.ultra_got[51])
{
	BackCont.shake += 2;
	other.direction = point_direction(x,y,other.x,other.y)
	other.speed = 12;
	with instance_create(other.x,other.y,Deflect)
	image_angle = other.direction
}
