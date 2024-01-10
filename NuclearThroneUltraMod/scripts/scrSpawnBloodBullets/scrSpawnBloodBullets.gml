///scrSpawnBloodBullets();
// /@description
function scrSpawnBloodBullets(xx,yy,am,ps,dmgAdjust = 0){
	var splatDir = random(360);
	var splatStep = 360/am;
	repeat(am)
	{
		with instance_create(xx,yy,BloodBullet)
		{
			dmg += dmgAdjust;
			motion_add(splatDir,ps);
			image_angle = direction
			team = 2;
		}
		splatDir += splatStep;
	}
}