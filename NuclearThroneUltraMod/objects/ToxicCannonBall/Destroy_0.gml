repeat(14)
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		motion_add(random(360),1+random(3))
		motion_add(other.direction,1);
	}
}

snd_play(sndToxicBarrelGas);
audio_stop_sound(sndFlamerLoop)

