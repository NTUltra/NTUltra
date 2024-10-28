if other.team != team and other.my_health > 0
{//instance_destroy()
	speed-=0.5;
	speed*=0.9;
with other
{
	DealDamage(other.dmg);
	if sprite_index != spr_hurt
		snd_play(snd_hurt, hurt_pitch_variation,true)

	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,8)
}

}



