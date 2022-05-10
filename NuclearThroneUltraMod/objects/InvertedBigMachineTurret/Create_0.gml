image_angle=90;


alarm[1] = 90;

target = -1
wkick=0;
team = 1;
spr_idle=sprInvertedBigMachineTurret
spr_fire=sprInvertedBigMachineTurretFire
proj = EnemyBullet1;
loops = GetPlayerLoops();
if loops > 10
	proj = EnemyBouncerBullet;
