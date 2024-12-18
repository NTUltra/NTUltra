friction=0.4;
image_speed=0.4;
direction=90;
depth = 2;
alarm[0]=200;
team = 1;
gunangle=0;
ammo=0;
scrInitDrops(1);

spr_idle=sprBigMachineLaser
spr_fire=sprBigMachineLaserFire
if instance_exists(BigMachine)
{
	if BigMachine.x < x
		image_xscale = -1;
}
maxSpeed = 2.5;
maxAmmo = 5;
fireRate = 4;
laserDelay = 70;
loops = GetPlayerLoops();
maxSpeed += min(2.5,loops*0.25);
if loops > 0
{
	maxAmmo = 8 + min(10,loops);
	fireRate = 2;
	laserDelay = 55 - min(30,loops*5);
	if loops > 1
		fireRate = 1;
}
	