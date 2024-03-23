/// @description Deal damage and die
if other.team != team
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		scrForcePosition60fps();
		if speed > maxSpeed+1
			speed = maxSpeed+1;	
	}
	my_health = 0;
}