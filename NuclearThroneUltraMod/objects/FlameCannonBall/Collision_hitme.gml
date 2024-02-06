if other.team != team and other.my_health > 0
{//instance_destroy()
speed*=0.9;
with other
{
	if UberCont.normalGameSpeed == 60
		DealDamage(other.dmg * 0.5, true);
	else
		DealDamage(other.dmg, true);
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,2)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)

}



