if team != other.team && other.alarm[11] < 1
{

	if other.typ =1
	{
	other.team = team
	other.direction = image_angle
	other.image_angle = other.direction
	other.speed*=0.4;
	}
	if other.typ = 2
	{
	with other
	instance_destroy()
	}

}

