event_inherited()
raddrop = 70
maxhealth = 360;
EnemyHealthAdjustments()
spr_idle = sprInvertedBigDisc
spr_walk = sprInvertedBigDisc
spr_hurt = sprInvertedBigDiscHurt

//behavior
projectileSpeed = 4;
maxSpeed = 6;
acc = 3;
actTime = 28;
rotation = 12;
acc = 2.5;
discAmount += 6;
if instance_exists(PitNavigation) && GetPlayerLoops() < 1
{
	actTime += 8;
	projectileSpeed -= 0.25;
}