if other.team != team and other.my_health > 0
{
	BackCont.shake += 4
	Sleep(10);
	with other
	{
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg * 0.5, true);
		else
			DealDamage(other.dmg, true);
		
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
}
