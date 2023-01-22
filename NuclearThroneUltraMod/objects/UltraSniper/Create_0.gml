raddrop = 20
maxhealth = 30
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprUltraSniperIdle
spr_walk = sprUltraSniperWalk
spr_hurt = sprUltraSniperHurt
spr_dead = sprUltraSniperDead

snd_hurt = sndSniperHit

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
gonnafire = 0
wkick = 0
proj = EnemyBullet1Square;
loops = GetPlayerLoops();
tellTime = 16
actTime = 9;
canSniperTogether = 3;
if loops > 0
{
	tellTime = 13;
	actTime = 8;
}
if loops > 2
{
	canSniperTogether = 3;	
}
if loops > 6
{	
	canSniperTogether = 5;
}