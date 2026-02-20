/// @description Ultra it up
event_inherited();
spr_idle = sprUltraDiscGuyIdle
spr_walk = sprUltraDiscGuyWalk
spr_hurt = sprUltraDiscGuyHurt
spr_dead = sprUltraDiscGuyDead
spr_fire = sprUltraDiscGuyFire
maxhealth = 40
EnemyHealthAdjustments();
meleedamage = 6
discSpeed += 0.2;
actTime -= 1;
range = 500;
loops += 3;