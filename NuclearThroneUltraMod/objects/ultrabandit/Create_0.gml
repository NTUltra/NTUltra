raddrop = 18
maxhealth = 20
meleedamage = 0
size = 1

event_inherited()


spr_idle = sprUltraBanditIdle
spr_walk = sprUltraBanditWalk
spr_hurt = sprUltraBanditHurt
spr_dead = sprUltraBanditDead


snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
maxSpeed = 4;
pspeed = 4.4;
loops = GetPlayerLoops()
if loops > 0
{
	pspeed = 5;
	maxSpeed = 4.5;
}
if loops > 1
{
	pspeed = 5.4;
	maxSpeed = 5;
}
if loops > 2
{
	pspeed = 5.8;
	maxSpeed = 5.25;
}
scrAddDrops(1);