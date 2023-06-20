raddrop = 20
maxhealth = 28
meleedamage = 3
mySize = 2



event_inherited()
spr_idle = sprGraveyardBreeder
spr_walk = sprGraveyardBreeder
spr_hurt = sprGraveyardBreederHurt
spr_dead = sprGraveyardBreederDead
spr_fire = sprGraveyardBreederFire

snd_hurt = sndMutant19Hurt
snd_dead = sndRatKingDie

//behavior
vomitSpeed = 0.4;
actTime = 23;
maxAmmo = 6;
maxSpeed = 2;
ammo = maxAmmo;
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
loops = GetPlayerLoops();
if loops > 0
{
	vomitSpeed = 0.6;
	maxAmmo += 4;
	actTime = 16;
}

