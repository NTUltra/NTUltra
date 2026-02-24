/// @description Harder boss

// Inherit the parent event
event_inherited();
maxhealth = 160;
EnemyHealthAdjustments();
scrBossHealthBuff();
radAmmo = 200;
projectileSpeed += 2;
aimLerp += 0.1;
actTime -= 2;
maxSpeed += 1;
acc += 0.3;
projectileType = InvertedHostileHorrorBullet;
lightingLength += 3;
fireRate = 1;
spr_idle = sprInvertedEnemyHorrorIdle
spr_walk = sprInvertedEnemyHorrorWalk
spr_hurt = sprInvertedEnemyHorrorHurt
spr_dead = sprInvertedEnemyHorrorDead