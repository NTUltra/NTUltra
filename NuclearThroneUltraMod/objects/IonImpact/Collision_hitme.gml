if other.team != team
{
with other
{
snd_play(snd_hurt, hurt_pitch_variation)
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),2)
BackCont.shake += 2
}
}

