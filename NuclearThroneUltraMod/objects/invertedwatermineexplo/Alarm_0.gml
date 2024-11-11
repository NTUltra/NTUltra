repeat(10)
{with instance_create(x,y,Dust)
motion_add(random(360),3)
}

snd_play(sndExplosion);
instance_create(x,y-24,Explosion);

var ang = 0;
snd_play(sndLaser);
repeat(6)
{
	/*
	with instance_create(x,y-24,EnemyBouncerBullet)
{team=0;
motion_add(other.ang,5)
image_angle = direction;}*/
with instance_create(x,y,EnemyLaser)
{image_angle = ang
	team = 0;
	maxDistance = 34;
	if instance_exists(Player) && Player.skill_got[12]
	{
		maxDistance *= 0.75;
	}
event_perform(ev_alarm,0)}
ang += 60}

instance_destroy();

