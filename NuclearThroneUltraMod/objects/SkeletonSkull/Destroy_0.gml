event_inherited()

var ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(ang,3)
ang += 36}

instance_create(x,y,SkeletonSkullDestroyed);

if !revived
{
	with Player
	{
		maxhealth += 2;
		scrHeal(2);
		snd_play_2d(sndSkeletonHealSkull);
		instance_create(x,y,HealFX);
	}
}
instance_create(x,y,MeltGhost);