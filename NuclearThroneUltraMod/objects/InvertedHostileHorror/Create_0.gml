/// @description Harder boss

// Inherit the parent event
event_inherited();
maxhealth = 90;
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