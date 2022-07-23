if alarm[1] < 2 && other.team != 2 and other.my_health > 0
{
	with other
	{
		//snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= 1;
		//sprite_index = spr_hurt
		image_index = 0
		direction = point_direction(other.x,other.y,x,y);
		motion_add(other.image_angle,3)
		//Slow down actions because of scare
		if alarm[1] > 2
			alarm[1] += 0.25;
			
		instance_create(x+random_range(-4,4),y+random_range(-4,4),Smoke)
	}
}

