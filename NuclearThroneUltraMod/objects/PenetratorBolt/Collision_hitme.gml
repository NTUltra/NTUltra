if (speed > 0 || alarm[1] > 0) && other.team != team
{
	if !array_contains(hitEntities,other.id)
	{
		
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
		}
		snd_play(sndSplinterMinigun,0.02,true,false,2,false,false,0.7);
		var xx = x+hspeed+lengthdir_x(8,direction);
		var yy = y+vspeed+lengthdir_y(8,direction);
		with instance_create(xx,yy,Splinter)
		{
			motion_add(other.direction+90,19)
			image_angle = direction
			team = other.team
			alarm[2] = 3;
		}
		with instance_create(xx,yy,Splinter)
		{
			motion_add(other.direction-90,19)
			image_angle = direction
			team = other.team
			alarm[2] = 3;
		}
		dmg += dmgAdd;
	}
}

