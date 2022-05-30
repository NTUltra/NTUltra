if other.team != team and other.my_health > 0
{//instance_destroy()
with other
{
if sprite_index!=spr_hurt
{
    my_health -= 1
    if instance_exists(Player){
    if Player.ultra_got[28]//roids ultra d
    {my_health -=2;}}
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,2)
    snd_play(snd_hurt, hurt_pitch_variation)
    instance_create(x,y,BulletHit)
}

}

}



