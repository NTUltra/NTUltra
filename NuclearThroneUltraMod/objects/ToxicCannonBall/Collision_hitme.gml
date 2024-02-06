if other.team != team and other.my_health > 0 && team!=2
{//instance_destroy()
speed*=0.82;
with other
{
if sprite_index!= spr_hurt{
DealDamage(other.dmg);
sprite_index = spr_hurt
image_index = 0}
motion_add(other.direction,2)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)

}
else if other.team != 2 and other.my_health > 0 && other.team != team
{//player hit
speed*=0.8;
with other
{
if sprite_index!= spr_hurt{
DealDamage(4)
sprite_index = spr_hurt
image_index = 0}
motion_add(other.direction,2)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)

}


