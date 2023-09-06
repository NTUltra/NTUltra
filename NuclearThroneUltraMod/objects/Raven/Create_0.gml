raddrop = 4
maxhealth = 10
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprRavenIdle
spr_walk = sprRavenWalk
spr_hurt = sprRavenHurt
spr_dead = sprRavenDead


snd_hurt = sndRavenHit
snd_dead = sndRavenDie
alarm[10] = 0;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
ammo = 3
z = 0
nofly = 30

gunspr = sprRavenGun;
ravenFly = RavenFly;
maxAmmo = 3;
actTime = 18;
projectileSpeed = 4;
loops = GetPlayerLoops();
minRange = 70;
maxRange = 180;
if loops > 0
{
	ammo = 4;
	actTime -= 4;
	projectileSpeed += 0.5;
}