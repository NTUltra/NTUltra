/// @description Bounce



// Inherit the parent event

if other.team != team && alarm[0] < 1
{
	if x < other.bbox_left || x > other.bbox_right
		hspeed *= -1;
	if y < other.bbox_bottom || x > other.bbox_top
		vspeed *= -1;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		if speed > maxSpeed+2
			speed = maxSpeed+2;
	}
	image_angle = direction;
	alarm[0] = 2;
}

