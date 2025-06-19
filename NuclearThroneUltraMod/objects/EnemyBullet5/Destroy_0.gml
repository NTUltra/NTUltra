instance_create(x,y,EBulletHit)
instance_create(x,y,WallBreakWallOnly);
with instance_create(x,y,SmallExplosion)
{
	team=other.team;
	if !scrIsGamemode(34)//Not hard mode
	{
		dmg=3;
		with myExplosionMask
			dmg = 2;
	}
}
if !audio_is_playing(sndExplosionS)
	snd_play(sndExplosionS);

