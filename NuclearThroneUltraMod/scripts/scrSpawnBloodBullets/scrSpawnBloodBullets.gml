///scrSpawnBloodBullets();
// /@description
function scrSpawnBloodBullets(xx,yy,am,ps){
	var splatDir = random(360);
	var splatStep = 360/am;
	repeat(am)
	{
		with instance_create(xx,yy,BloodBullet)
		{
			motion_add(splatDir,ps);
			image_angle = direction
			team = 2;
		}
		splatDir += splatStep;
	}
}