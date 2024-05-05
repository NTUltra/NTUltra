repeat(2)
{
	with instance_create(x,y,AmmoPickup) {
		ammoValue = 0.75;	
	}
}
snd_play(sndAmmoChest)
instance_destroy()

