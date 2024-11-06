raddrop = 0
maxhealth = 22
mySize = 1

event_inherited()
meleedamage = 5

wasResurrected = true;
spr_idle = sprScrapBossMissileIdle
spr_walk = sprScrapBossMissileIdle
spr_hurt = sprScrapBossMissileHurt
spr_dead = sprScrapBossMissileDead

alarm[2] = 2;
alarm[4] = 10;
alarm[5] = 120;
explodeOnHitTime = 60;
if instance_exists(Player)
{
	if Player.loops>0
	{
		alarm[0] = 60+random(60);
		explodeOnHitTime += 30;
	}
	proj = EnemyBullet1;
	if Player.loops > 9
		proj = EnemyBouncerBullet
}
acc = 0.1;
maxSpeed = 2;
scrInitDrops(1);
draw = true;
blink = 6;
trailSprite = sprScrapBossMissileTrail;