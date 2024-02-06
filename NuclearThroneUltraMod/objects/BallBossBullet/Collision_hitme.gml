if other.team != team and other.team != 0 and other.my_health > 0//also ignore props
{
	if other.object_index = Player
	{
	if other.sprite_index != other.spr_hurt
	{
	with other
	{
	sprite_index = spr_hurt
	image_index = 0
	DealDamage(other.dmg)
	snd_play(snd_hurt, hurt_pitch_variation)
	motion_add(point_direction(other.x,other.y,x,y),4)
	Sleep(40)
	}
	}
	}
else
{
	with other
	{
	snd_play(snd_hurt, hurt_pitch_variation)
	DealDamage(other.dmg)
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,4)
	}
}

//instance_destroy()


instance_create(x,y,EBulletHit)
//with instance_create(x,y,BulletHit)
//sprite_index = sprEnemyBulletHit
}

