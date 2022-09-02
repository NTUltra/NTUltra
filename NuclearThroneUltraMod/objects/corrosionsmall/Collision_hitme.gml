if other.team != team and other.my_health > 0
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= 2
		instance_create(x,y,Smoke)
	}
}