if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with other
{
if sprite_index!=spr_hurt
{
    if my_health-other.dmg>0
    {
    
    with other
    instance_destroy();
    
    }
    DealDamage(other.dmg)
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,10)
}
}

}

