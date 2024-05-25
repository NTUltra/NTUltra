if other.team != team and other.my_health > 0
{
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.image_angle,4)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
instance_create(x,y,Smoke)}

