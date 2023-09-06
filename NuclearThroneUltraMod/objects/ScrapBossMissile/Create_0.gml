raddrop = 0
maxhealth = 22
meleedamage = 5
mySize = 1

event_inherited()

spr_idle = sprScrapBossMissileIdle
spr_walk = sprScrapBossMissileIdle
spr_hurt = sprScrapBossMissileHurt
spr_dead = sprScrapBossMissileDead

alarm[2] = 2;
scrTarget()
explodeOnHitTime = 60;
if instance_exists(Player)
{
	if Player.loops>0
	{
		alarm[0] = 30+random(60);
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