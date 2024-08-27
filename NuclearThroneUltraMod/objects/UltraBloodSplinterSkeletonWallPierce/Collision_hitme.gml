/// @description Bounce off of enemies
if candmg and other.my_health > 0 and other.team != team
{
	if wallHits >= 0
	{
		instance_destroy()
	}
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,3)
	}
	if other.my_health > 0
	{
		if wallHits < 1
		{
			dmg = max(dmg - 2,1);
			wallHits ++;
			snd_play(sndShotgunHitWall,0.1,true);
			speed = min(speed + 1, 24);
			if x < other.bbox_left || x > other.bbox_right
				hspeed *= -1;
			if y < other.bbox_bottom || x > other.bbox_top
				vspeed *= -1;
		}
		else
		{
			target = other.id
			x += hspeed;
			y += vspeed;
			with scrBoltTrail(trailColour,0.11,0.75)
			{
				image_speed -= 0.1;
			}
			with instance_create(x,y,BoltStick)
			{
				sprite_index = other.boltStick
				image_angle = other.image_angle
				target = other.target
			}
		}
	}
}

