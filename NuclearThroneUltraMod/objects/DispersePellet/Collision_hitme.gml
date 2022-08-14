if other.team != team and other.my_health > 0
{
	alarm[0] += 1;
with other
{
    my_health -= 1
    if instance_exists(Player){
    if Player.ultra_got[28]//roids ultra d
    {my_health -=2;}}
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,2)
    snd_play(snd_hurt, hurt_pitch_variation)
}

}



