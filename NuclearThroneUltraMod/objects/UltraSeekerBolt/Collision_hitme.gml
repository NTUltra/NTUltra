/// @description Can Pierce
if speed > 1 and other.team != team
{
	if other.my_health > 0
	{
		with other
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			snd_play(snd_hurt, hurt_pitch_variation,true)
			motion_add(other.direction,4)
			
		}
		if other.my_health > 0
		{
			target = other.id;
			with instance_create(x,y,BoltStick)
			{
				sprite_index = sprSeekerStick;
				image_angle = other.image_angle
				target = other.target
				team = other.team;
			}
		}
		if other.my_health > 0 || hits < 0
			instance_destroy();
		else
			hits --;
	}
}