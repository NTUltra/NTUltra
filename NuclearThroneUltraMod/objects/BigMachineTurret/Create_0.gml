image_angle=90;
alarm[1] = 90;
team = 1;
target = -1
wkick=0;
spr_idle=sprBigMachineTurret
spr_fire=sprBigMachineTurretFire
loops = GetPlayerLoops();
proj = EnemyBullet1;
defaultSpeed = 2;
if UberCont.newContent && loops > 0
{
	proj = EnemyBullet1Diamond
	defaultSpeed -= 0.2;
}
else if loops > 10
	proj = EnemyBouncerBullet;
actTime = 50;
actTime -= min(30,loops*10)
depth = 2;