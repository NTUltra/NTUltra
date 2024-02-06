if other.team != team
{
if speed > 0
snd_play(sndGrenadeStickWall)
speed = 0
x = other.x+offx
y = other.y+offy


with other
{
    if sprite_index!=spr_hurt
    {
    DealDamage(10);
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,3)
    }
}


if alarm[1]>10
alarm[1] = 10;




}

