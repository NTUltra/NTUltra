if other.isGrenade
{
	BackCont.shake += 2;
	snd_play(sndRicochet,0.1,true);
	with other
		scrDeflectNade(other.direction);
}
else if team != other.team
{
	if other.typ == 1
	{
		other.team = team
		BackCont.shake += 2;
		snd_play(sndRicochet,0.1,true);
		other.direction = image_angle
		speed = max(speed+2,other.speed);
		other.image_angle = other.direction
		with instance_create(other.x,other.y,Deflect)
		image_angle = other.direction
		//Deflect sprite
		with other
			event_user(15);
	}
	else if other.typ == 3
	{
		with other
		{
			x = xprevious;
			y = yprevious;
		}
	}
	else if other.typ == 2
	{
		snd_play(sndProjectileDestroy,0.1,true);
		BackCont.shake += 1;
		with other
			instance_destroy()
	}
}

