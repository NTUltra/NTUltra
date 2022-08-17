/*if meleedamage > 0 and team != other.team
{
with other
{
if !(skill_got[8] = 1)||!(other.my_health==0){//gamma guts immunity!
    if sprite_index != spr_hurt
    {
    snd_play(other.snd_melee)
    sprite_index = spr_hurt
    image_index = 0
    snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
    my_health -= other.meleedamage
    motion_add(point_direction(other.x,other.y,x,y),4)
    Sleep(100)
    }
}
}
}*/
if size <= other.size
	motion_add(point_direction(other.x,other.y,x,y),size)

/* */
/*  */
