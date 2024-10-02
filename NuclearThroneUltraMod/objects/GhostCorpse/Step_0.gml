/// @description Move
if UberCont.normalGameSpeed == 60
	image_angle += rotation * 0.5;
else
	image_angle += rotation;
if alarm[1] < 1
{
	speed = 0;
	//away from player
	if instance_exists(Player)
	{
		direction = point_direction(Player.x,Player.y,x,y);
		speed = 3.5;
		if point_distance(x,y,Player.x,Player.y) < 48 || alarm[0] < 3
			speed = 5;
		with myAnim
		{
			x = other.x;
			y = other.y;
		}
	}
}
else if speed > maxSpeed
	speed = maxSpeed;