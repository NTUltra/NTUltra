if other.team != team
{
instance_destroy()
Sleep(40)
with instance_create(x,y,BulletHit)
	sprite_index = sprFlakHit;
with other
{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	my_health -= other.dmg;
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,6)
}
}

