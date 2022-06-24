if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
if bskin
{
with instance_create(x,y,BulletHit)
sprite_index=sprHorrorHitB
}
else if bskin=2
{
with instance_create(x,y,BulletHit)
sprite_index=sprHorrorHitC
}
else
{
with instance_create(x,y,BulletHit)
sprite_index=sprHorrorHit
}


}

