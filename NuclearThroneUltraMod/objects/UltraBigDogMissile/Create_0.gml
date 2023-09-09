event_inherited()
maxhealth = 25;
EnemyHealthAdjustments();
spr_idle = sprUltraBigDogMissileIdle;
spr_walk = sprUltraBigDogMissileIdle;
spr_hurt = sprUltraBigDogMissileHurt;
spr_dead = sprScrapBossMissileDead;
acc = 0.125;
maxSpeed = 2.3;
alarm[0] = 60 + random(30);
explodeOnHitTime += 60;
trailSprite = sprUltraBigDogMissileTrail;