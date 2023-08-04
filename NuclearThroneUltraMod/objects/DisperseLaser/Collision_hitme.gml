if other.team != team and other.my_health > 0
{
	alarm[0] += 1;
with other
{
if UberCont.normalGameSpeed == 60
		my_health -= other.dmg*0.5;
	else
		my_health -= other.dmg;
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,2)
snd_play(snd_hurt, hurt_pitch_variation)

}

}



