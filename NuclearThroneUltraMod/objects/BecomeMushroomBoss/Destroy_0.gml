if !instance_exists(MushroomBoss) && !instance_exists(BecomeMushroomBossGrow)
	with instance_create(x,y,BecomeMushroomBossGrow) {
		image_xscale = other.image_xscale;	
	}
