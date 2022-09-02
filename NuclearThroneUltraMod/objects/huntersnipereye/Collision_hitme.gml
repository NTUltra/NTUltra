if other.team != team
{
	var ct = confuseTime;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg;
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,16)
		if speed > maxSpeed+4
			speed = maxSpeed+4;
		if alarm[1] > 0
		{
			alarm[11] += ct
			alarm[1] += ct;
		}
		if instance_exists(myConfusion)
		{
			with myConfusion
			{
				alarm[0] += ct;
				image_speed = 0.4;
				image_index = 0;
			}
		}
		else
		{
			myConfusion = instance_create(x,y-8,HumphryConfuse)
			with myConfusion {
				myEnemy = other.id;
				image_xscale = choose(1,-1);
				image_speed = 0.4;
				sprite_index = sprEnemyConfusion;
				alarm[0] = ct;
			}
		}
	}
}

