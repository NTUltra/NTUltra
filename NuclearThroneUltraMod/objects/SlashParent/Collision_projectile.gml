if image_index < 1 || canAlwaysDeflect
{
	if other.isGrenade
	{
		if scrMeleeAmmoCost(2)
			exit;
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
			if scrMeleeAmmoCost(2)
				exit;
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
			if scrMeleeAmmoCost(1)
				exit;
			with other
				instance_destroy()
		}
		else if other.typ == 3
		{
			if scrMeleeAmmoCost(3)
				exit;
			if canKillSquares
				with other
					instance_destroy();
			else
				with other
				{
					x = xprevious;
					y = yprevious;
				}
		}
	}
}