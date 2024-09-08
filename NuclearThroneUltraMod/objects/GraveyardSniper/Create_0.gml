raddrop = 7
maxhealth = 11
meleedamage = 0
mySize = 1
loops = GetPlayerLoops();
if loops < 1
	raddrop = 2;
event_inherited()

spr_idle = sprGraveyardSniper
spr_walk = sprGraveyardSniper
spr_fire = sprGraveyardSniperFire
spr_hurt = sprGraveyardSniperHurt
spr_dead = sprGraveyardSniperDead

snd_hurt = sndMutant19Hurt

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
wkick = 0
proj = EnemyBullet4;
tellTime = 7
actTime = 25;
maxAmmo = 4;
ammo = maxAmmo;
pspeed = 6.9;
if loops > 0
{
	tellTime = 5;
	actTime = 18;
	pspeed = 9;
}
alarm[3] = 10 + irandom(10);