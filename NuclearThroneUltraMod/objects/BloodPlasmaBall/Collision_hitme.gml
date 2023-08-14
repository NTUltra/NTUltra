/// @description Ignore iframe
if other.team != team and other.my_health > 0
{
	scrPlasmaPush();
	with other
	{
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		scrForcePosition60fps();
		motion_add(other.direction,7)
		if speed > maxSpeed + 2
			speed = maxSpeed + 2;
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
}