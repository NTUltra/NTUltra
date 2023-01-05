event_inherited()
raddrop = 26
maxhealth = 20
meleedamage = 3
size = 2
spr_idle = sprInvertedGraveyardBreeder
spr_walk = sprInvertedGraveyardBreeder
spr_hurt = sprInvertedGraveyardBreederHurt
spr_dead = sprInvertedGraveyardBreederDead
spr_fire = sprInvertedGraveyardBreederFire


//behavior
vomitSpeed = 1;
actTime = 18;
maxAmmo = 10;
maxSpeed = 3;
ammo = maxAmmo;
walk = 0
if loops > 0
{
	vomitSpeed = 1.5;
	maxAmmo += 4;
	actTime = 14;
}

