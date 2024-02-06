if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with other
{
DealDamage(other.dmg)
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
scrForcePosition60fps();
if speed > maxSpeed + 3
	speed = maxSpeed+3;
}
}

