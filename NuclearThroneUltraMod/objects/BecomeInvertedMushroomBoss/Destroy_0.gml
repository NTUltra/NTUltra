/// @description INV BOSS

if !instance_exists(MushroomBoss) && !instance_exists(BecomeMushroomBossGrow)
	with instance_create(x,y,BecomeInvertedMushroomBossGrow) {
		instance_create(x,y,DramaCamera);
		image_xscale = other.image_xscale;	
	}
scrDrop(100,0);