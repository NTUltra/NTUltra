/// @description Crazy bullets
alarm[8] = crazyDelay;
var xx = middleX - (moveRange*2);
var ps = crazyProjectileSpeed;
for (var yy = y + crazyStep; yy < y + verticalDistanceBeteenTanks + crazyStep; yy += crazyStep)
{
	if (crazyPattern && !(yy < y + noY + crazyGap && yy > y + noY - crazyGap))
	|| (!crazyPattern && (yy < y + noY + crazyStep && yy > y + noY - crazyStep))
		with instance_create(xx,yy,EnemyBullet1Square)
		{
			sprite_index = sprIDPDSquareBullet;
			onlyHitPlayerTeam = true;
			image_index = 0;
			motion_add(0,ps);
			image_angle = direction
			team = other.team
		}
}
noY += crazyWaveSpeed * noYDir;
if (y + noY >  y + verticalDistanceBeteenTanks - crazyGap - crazyStep || y + noY < y + crazyGap + crazyStep)
{
	noYDir *= -1;
	if noYDir == 1
	{
		crazyPattern = !crazyPattern;
		alarm[8] += crazyDelay*2;
	}
}
/*
crazyAmmoReverse -= 1;
if crazyAmmoReverse < 0
{
	crazyAmmoReverse = crazyAmmoReverseMax;
	crazyPattern = !crazyPattern;
}*/