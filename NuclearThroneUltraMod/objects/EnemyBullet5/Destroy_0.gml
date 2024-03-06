instance_create(x,y,EBulletHit)
instance_create(x,y,WallBreakWallOnly);
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
if !audio_is_playing(sndExplosion)
snd_play(sndExplosion);

