if other.team != team and other.my_health > 0
{//instance_destroy()
speed*=0.9;
with other
{
	if sprite_index != spr_hurt
	{
		my_health -= 4
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		snd_play(snd_hurt, hurt_pitch_variation,true)
		if object_index == Player
			hitBy = other.sprite_index;
	}
}

}



