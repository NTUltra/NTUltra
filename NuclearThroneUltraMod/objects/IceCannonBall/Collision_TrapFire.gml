/// @description Frost defuses fire
with other
{
	if team != other.team
	{
		instance_destroy();
		with instance_create(x,y,Smoke)
		{
			speed = other.speed;
			direction = other.direction;
			image_angle = other.image_angle;
		}
	}
}



