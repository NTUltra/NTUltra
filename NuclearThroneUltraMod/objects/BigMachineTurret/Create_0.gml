image_angle=90;

alarm[1] = 90;
team = 1;
target = -1
wkick=0;
spr_idle=sprBigMachineTurret
spr_fire=sprBigMachineTurretFire
loops = GetPlayerLoops();
proj = EnemyBullet1;
if loops > 10
	proj = EnemyBouncerBullet;
