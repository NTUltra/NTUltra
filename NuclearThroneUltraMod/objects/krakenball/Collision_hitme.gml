if other.team != team and other.my_health > 0
{
	BackCont.shake += 5
	Sleep(10);
	with other
	{
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
}
