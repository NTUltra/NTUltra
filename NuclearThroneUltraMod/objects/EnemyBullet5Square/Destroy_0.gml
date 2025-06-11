instance_create(x,y,EBulletHit)
with instance_create(x,y,SmallExplosion)
{
	team=other.team;
	if !scrIsGamemode(34)
	{
		dmg=3;
		with myExplosionMask
			dmg = 3;
	}
}
if !audio_is_playing(sndExplosionS)
	snd_play(sndExplosionS);

