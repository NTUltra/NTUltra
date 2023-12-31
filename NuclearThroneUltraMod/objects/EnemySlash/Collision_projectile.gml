if team != other.team && other.alarm[11] < 1
{

	if other.typ == 1 && other.canBeMoved
	{
		other.team = team
		other.direction = image_angle
		other.image_angle = other.direction
		other.speed*=0.4;
		with other
			event_user(15);
	}
	if other.typ = 2
	{
		with other
		instance_destroy()
	}

}

