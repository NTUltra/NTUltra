if speed > 0 and other.team != team
{
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
if other.my_health >= 25
{
instance_destroy()

with other
{
my_health -= 50
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
}
target = other.id
with instance_create(x,y,BoltStick)
{
image_angle = other.image_angle
target = other.target
}
}
if other.my_health < 25 and (alarm[1]<1 || other.sprite_index != other.spr_hurt)//other.sprite_index != other.spr_hurt
{
with other
{
my_health -= 50
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
alarm[1]=4
}
}
}

