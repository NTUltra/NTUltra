if team != other.team && other.alarm[11] < 1
{
	with other {
		if typ =1
		{
			x += hspeed * 2;
			y += vspeed * 2;
			scrForcePosition60fps();
			BackCont.shake += 1;
			Sleep(10);
			with instance_create(other.x,other.y,Deflect)
				image_angle = other.direction
			team = other.team
			direction = other.image_angle
			image_angle = direction
			speed=max(speed*0.4,1);
			event_user(15);
		}
		if typ = 2
		{
			with other
				instance_destroy()
		}
	}
}

