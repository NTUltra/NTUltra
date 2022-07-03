if speed > 0 and other.my_health > 0 and other.team != team
{
instance_destroy()

with other
{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	my_health -= other.dmg
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,3)
}
target = other.id
with instance_create(x,y,BoltStick)
{
sprite_index = sprSplinterStick
image_angle = other.image_angle
target = other.target
}

}

