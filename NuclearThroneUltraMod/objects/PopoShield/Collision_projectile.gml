if team != other.team && image_index>11 && other.alarm[11] < 1
{
	if other.typ == 1
	{
		snd_play(sndShielderDeflect,0.1,true);
		with other
		{
			team = other.team
			direction += 180;//point_direction(other.x,other.y,x,y)
			image_angle = direction
			speed = max(speed* 0.6,1);
			event_user(15);
			with instance_create(x,y,Deflect)
				image_angle = other.direction
		}
	}
	else if other.typ == 2
	{
		with other
			instance_destroy()
	}
}

