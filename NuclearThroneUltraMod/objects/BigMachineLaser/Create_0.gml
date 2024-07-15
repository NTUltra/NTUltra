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
maxSpeed = 2;
loops = GetPlayerLoops();
maxSpeed += min(2,loops*0.25);