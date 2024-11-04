friction=0.4;
image_speed=0.4;
direction=90;
depth = 2;
alarm[0]=200;
team = 1;
gunangle=0;
ammo=0;
scrInitDrops(1);

horizontal=false;

spr_idle=sprInvertedBigMachineLaser
spr_fire=sprInvertedBigMachineLaserFire

loops = GetPlayerLoops();
maxSpeed = 2.25;
maxSpeed += min(1.75,loops*0.25);
maxAmmo = 4;
fireRate = 2;
laserDelay = 60;
if loops > 0
{
	maxAmmo = 8 + min(10,loops);
	fireRate = 1;
	laserDelay = 50 - min(30,loops*5);
}