if other.team != team and other.my_health > 0
{
	instance_destroy()

	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
	}
	if random(3) < 1
		scrRecycleGland(1);
	with instance_create(x,y,BulletHit)
		sprite_index = sprAllyBulletHit
}

