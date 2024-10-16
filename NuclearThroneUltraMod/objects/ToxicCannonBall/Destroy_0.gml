var ang = direction;
repeat(12)
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		motion_add(ang,1+random(3))
		motion_add(other.direction,2);
	}
	ang += 30;
}
ang += 15;
repeat(3)
{
	with instance_create(x,y,AcidStreak)
	{
		image_angle = random(360)
		motion_add(image_angle,12);
	}
	ang += 120;
}
snd_play(sndToxicBarrelGas);
audio_stop_sound(sndFlamerLoop)

