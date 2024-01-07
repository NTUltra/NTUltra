event_inherited()
raddrop = 16
maxhealth = 75//45
EnemyHealthAdjustments();

spr_idle = sprUltraLaserCrystaldle
spr_walk = sprUltraLaserCrystaldle
spr_hurt = sprUltraLaserCrystalHurt
spr_dead = sprUltraLaserCrystalDead
spr_fire = sprUltraLaserCrystalFire


//behavior
droprate += 5;
tellTime = 21;
actTime -= 1;
maxSpeed = 2.5;
maxAmmo = 6;
alarm[0] = 0;