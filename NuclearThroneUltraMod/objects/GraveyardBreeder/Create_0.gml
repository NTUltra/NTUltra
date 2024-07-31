raddrop = 3
maxhealth = 28
mySize = 2
loops = GetPlayerLoops();
if loops > 0
	raddrop = 12;


event_inherited()
meleedamage = 3


spr_idle = sprGraveyardBreeder
spr_walk = sprGraveyardBreeder
spr_hurt = sprGraveyardBreederHurt
spr_dead = sprGraveyardBreederDead
spr_fire = sprGraveyardBreederFire

snd_hurt = sndMutant19Hurt
snd_dead = sndRatKingDie

//behavior
vomitSpeed = 0.4;
actTime = 24;
maxAmmo = 3;
maxSpeed = 2;
ammo = maxAmmo;
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
if loops > 0
{
	vomitSpeed = 0.6;
	maxAmmo += 2;
	actTime = 16;
}

alarm[3] = 10 + irandom(10);