/// @description xxx

// Inherit the parent event
event_inherited();

actualMeleeDamage = 20;
raddrop += 5;
maxhealth = 20;
EnemyHealthAdjustments();
prevHealth = my_health;
actTime -= 1;
EnemyHealthAdjustments();
spr_inactive = sprInvertedVenusRadTrap;
spr_idle = sprInvertedVenusRadTrapIdle;
spr_walk = sprInvertedVenusRadTrapIdle;
spr_hurt = sprInvertedVenusRadTrapHurt;
spr_dead = sprInvertedVenusRadTrapDead;
spr_fire = sprInvertedVenusRadTrapFire;
spr_active = sprInvertedVenusRadTrapActivate;
isInverted = true;