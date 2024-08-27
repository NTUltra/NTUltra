/// @description Bounce
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
	wallbounce -= 1;
	dmg = max(dmg - 1,1);
	image_index = max(1,image_index - 1);
	image_speed += 0.05;
	if wallbounce <= 0
	{
		with(instance_create(x + hspeed,y + vspeed,BulletHit))
		{sprite_index = sprBloodBulletHit}
		instance_destroy();
	}
}