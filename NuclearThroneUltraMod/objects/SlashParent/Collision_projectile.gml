if other.isGrenade
{
	with other
	{
		scrDeflectNade(other.direction);
		Sleep(10);
		BackCont.shake += 5;
	}	
}
else if team != other.team
{
	if other.typ == 1
	{
		other.team = team
		other.direction = image_angle
		other.image_angle = other.direction
		with instance_create(other.x,other.y,Deflect)
		image_angle = other.direction
		//Deflect sprite
		with other
			event_user(15);
	}
	else if other.typ == 2
	{
		with other
			instance_destroy()
	}
	else if other.typ == 3
	{
		with other
		{
			x = xprevious;
			y = yprevious;
		}
	}
}

