raddrop = 11
maxhealth = 10
meleedamage = 0
size = 1

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
loops = GetPlayerLoops();
tellTime = 5
actTime = 20;
maxAmmo = 4;
ammo = maxAmmo;
pspeed = 8;
if loops > 0
{
	tellTime = 5;
	actTime = 18;
	pspeed = 10;
}
alarm[0] = 1;