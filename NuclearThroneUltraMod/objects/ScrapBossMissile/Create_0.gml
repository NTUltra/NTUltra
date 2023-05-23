raddrop = 0
maxhealth = 22
meleedamage = 5
size = 1

event_inherited()

spr_idle = sprScrapBossMissileIdle
spr_walk = sprScrapBossMissileIdle
spr_hurt = sprScrapBossMissileHurt
spr_dead = sprScrapBossMissileDead


scrTarget()

if instance_exists(Player)
{
	if Player.loops>0
		alarm[0] = 30+random(60);
	proj = EnemyBullet1;
	if Player.loops > 9
		proj = EnemyBouncerBullet
}

scrInitDrops(1);