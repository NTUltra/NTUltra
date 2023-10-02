if other.team != team and other.my_health > 0
{
	var deal = dmg;
	if alarm[3] > 0
		deal *= 2;
	if UberCont.normalGameSpeed == 60
		deal *= 0.5;
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true);
			
		my_health -= deal;
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,4)
		instance_create(x,y,Smoke)
	}
}

