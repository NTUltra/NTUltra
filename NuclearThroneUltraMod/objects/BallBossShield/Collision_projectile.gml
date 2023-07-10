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
			event_user(15);
			with instance_create(x,y,Deflect)
				image_angle = other.direction
		}
		sprite_index = spr_deflect;
		image_index = 0;
	}
	else if other.typ == 2
	{
		snd_play(sndProjectileDestroy,0.1,true);
		sprite_index = spr_deflect;
		image_index = 0;
		with other
			instance_destroy()
	}
	else if other.typ == 0 && !other.canBeMoved && other.isLaser
	{
		snd_play(sndProjectileDestroy,0.1,true);
		with other
		{
			var d = point_distance(xstart,ystart,other.x,other.y) - 1;
			x = xstart + lengthdir_x(d,image_angle);
			y = ystart + lengthdir_y(d,image_angle);
			image_xscale = point_distance(x,y,xstart,ystart)*0.5
			alarm[0] += 2;
		}
	}
	
}

