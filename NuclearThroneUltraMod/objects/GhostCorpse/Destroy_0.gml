/// @description Move
speed = holdSpeed;
//direction = holdDirection;
scrSpawnCorpse();

if explosionSize == 2
{
	snd_play(sndGhostDie,0.1);
	with instance_create(x,y,MediumGhostExplosion)
	{
		team = 7;
		dmg = 4
		with myExplosionMask
		{
			dmg = 4
		}
		direction = other.direction;
		speed = 3;
	}
}
else
{
	snd_play(sndSmallGhostDie,0.1);
	with instance_create(x,y,SmallGhostExplosion)
	{
		team = 7;
		dmg = 3
		with myExplosionMask
		{
			dmg = 3
		}
		direction = other.direction;
		speed = 3;
	}
}