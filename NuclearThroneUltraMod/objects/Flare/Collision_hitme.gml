if other.team != team && other.my_health > 0
{
instance_destroy()
with other
{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	DealDamage(other.dmg)
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,5)
}
}

