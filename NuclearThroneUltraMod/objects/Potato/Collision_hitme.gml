if other.team != team and other.my_health > 0
{
with other
{snd_play(sndPartyHorn);
    if sprite_index!=spr_hurt
    {
	DealDamage(40)
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,60)
    snd_play(snd_hurt, hurt_pitch_variation)
    }
}


}

