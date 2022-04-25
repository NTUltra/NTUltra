if team != other.team && alarm[0] < 1
{
	if other.typ == 1
	{
		snd_play(sndShielderDeflect,0.1,true);
		with other
		{
			team = other.team
			direction = point_direction(other.x,other.y,x,y)
			image_angle = direction
			speed = max(speed* 0.6,1);
	
			with instance_create(x,y,Deflect)
				image_angle = other.direction
		}
	}
	if other.typ = 2
	{
		with other
			instance_destroy()
	}
	sprite_index = sprStatueBossShieldDeflect;
	image_index = 0;
}

