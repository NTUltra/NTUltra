if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
scrForcePosition60fps();
if speed > maxSpeed + 2
	speed = maxSpeed+2;
}
}

