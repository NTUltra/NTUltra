if other.isGrenade
{
	with other
	{
		scrDeflectNade(other.direction);
		BackCont.shake += 5;
	}	
}
else if team != other.team
{
	
	if other.typ =1
	{
		BackCont.shake += 5;
		with other
		{
			team = team
			direction = other.image_angle
			image_angle = direction
			with instance_create(x,y,Deflect)
				image_angle = other.direction
			//Deflect sprite
			event_user(15);
		}
	}
	else if other.typ = 2
	{
		with other
			instance_destroy()
	}
}

