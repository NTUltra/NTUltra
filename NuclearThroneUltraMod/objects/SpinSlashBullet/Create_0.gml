/// @description Low damage

// Inherit the parent event
event_inherited();
norecycle = false;
dmg = 5;
image_speed -= 0.1;
snd_wallhit = sndHitWall;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.bulletShotgun
	|| um == ultramods.boltBullet
	|| um == ultramods.laserBullet
	|| um == ultramods.bulletPlasma
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}