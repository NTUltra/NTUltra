/// @description OPen through shock
repeat(8)
{
	with instance_create(x,y,AmmoPickup) {
		ammoValue = 0.75;	
	}
}
snd_play(sndAmmoChest)
instance_destroy()