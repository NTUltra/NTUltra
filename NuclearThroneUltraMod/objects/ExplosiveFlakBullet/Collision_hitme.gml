if other.team != team
{
	instance_destroy()
	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	Sleep(50)
	with instance_create(x,y,BulletHit)
		sprite_index = sprFlakHit;
	with other
	{
	my_health -= other.dmg;
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,6)
	}
}

