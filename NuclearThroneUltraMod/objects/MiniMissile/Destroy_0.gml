with instance_create(x,y,SmallExplosion)
{
	dmg -= 1;
	with myExplosionMask
	{
		dmg -= 1;	
	}
}
snd_play(sndExplosionS)

