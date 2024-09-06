if !instance_exists(MushroomBoss) && !instance_exists(BecomeMushroomBossGrow)
	with instance_create(x,y,BecomeMushroomBossGrow) {
		instance_create(x,y,DramaCamera);
		image_xscale = other.image_xscale;	
	}
