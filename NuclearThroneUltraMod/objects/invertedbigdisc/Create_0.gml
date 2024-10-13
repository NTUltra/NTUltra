event_inherited()
raddrop = 70

spr_idle = sprInvertedBigDisc
spr_walk = sprInvertedBigDisc
spr_hurt = sprInvertedBigDiscHurt

//behavior
projectileSpeed = 4;
maxSpeed = 6;
if loops < 1
	maxSpeed -= 1;
acc = 3;
actTime = 28;
rotation = 12;
acc = 2.5;
discAmount += 6;
maxhealth = 360;
if instance_exists(PitNavigation) && loops < 1
{
	maxhealth -= 40;
	discSlowRange += 16;
	discSlowAmount += 0.5;
	discAmount -= 3;
	maxSpeed -= 0.6
	raddrop = 20;
	actTime += 11;
	acc -= 0.5;
	rotation = 11;
	projectileSpeed -= 0.6;
}
EnemyHealthAdjustments()