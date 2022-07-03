if other.team != team
{if sticky = 1
{
if speed > 0
snd_play(sndGrenadeStickWall)
speed = 0
x = other.x+offx
y = other.y+offy
}
else
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
}
}
}

