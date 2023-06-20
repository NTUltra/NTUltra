event_inherited()

raddrop = 14
maxhealth = 6
meleedamage = 0
mySize = 1

spr_idle = sprInvertedGraveyardSniper
spr_walk = sprInvertedGraveyardSniper
spr_fire = sprInvertedGraveyardSniperFire
spr_hurt = sprInvertedGraveyardSniperHurt
spr_dead = sprInvertedGraveyardSniperDead


tellTime = 4
actTime = 17;
maxAmmo = 6;
ammo = maxAmmo;
pspeed = 10;
if loops > 0
{
	tellTime = 3;
	actTime = 14;
	pspeed = 12;
}
alarm[0] = 1;