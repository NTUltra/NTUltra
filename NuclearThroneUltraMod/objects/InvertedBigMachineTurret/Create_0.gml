image_angle=90;

depth = 2;
alarm[1] = 90;

target = -1
wkick=0;
team = 1;
spr_idle=sprInvertedBigMachineTurret
spr_fire=sprInvertedBigMachineTurretFire
proj = EnemyBullet1;
loops = GetPlayerLoops();
defaultSpeed = 1.4;
if loops > 0
{
	proj = EnemyBullet1Diamond
	defaultSpeed -= 0.2;
}
if loops > 10
	proj = EnemyBouncerBullet;
actTime = 40;
actTime -= min(25,loops*5)