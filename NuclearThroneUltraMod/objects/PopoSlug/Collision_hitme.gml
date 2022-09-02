if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
my_health -= 5
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,9)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with instance_create(x,y,BulletHit)
{
	if other.team == 2
		sprite_index = sprPopoSlugHitRogue;
	else
		sprite_index = sprPopoSlugHit
}
}