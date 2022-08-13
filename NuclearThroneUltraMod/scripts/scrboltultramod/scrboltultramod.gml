///scrBoltUltraMod();
// /@description
///@param
function scrBoltUltraMod(){
	var um = GetPlayerUltramod();
	if (um == ultramods.plasmaBolt || um == ultramods.rocketBolt
	|| um == ultramods.laserBolt || um == ultramods.shotgunBolt
	|| um == ultramods.boltBullet) {
		mask_index = mskPickupThroughWall;
		image_speed = 0;
		image_index = 0;
		alarm[11] = 1;
	}
}