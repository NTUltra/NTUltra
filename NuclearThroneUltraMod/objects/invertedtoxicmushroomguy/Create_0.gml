
event_inherited()
meleedamage = 3;
raddrop = 16
maxhealth = 9;
EnemyHealthAdjustments();
spr_idle = sprInvertedToxicMushroomGuyIdle
spr_walk = sprInvertedToxicMushroomGuyWalk
spr_hurt = sprInvertedToxicMushroomGuyHurt
spr_dead = sprInvertedToxicMushroomGuyDead
spr_gun = sprInvertedToxicMushroomGuyGun;

//behavior
walk = 0
acc = 1;
maxSpeed = 4;
actTime = 12;
l = 4;
if GetPlayerLoops() > 0
	l = 5;