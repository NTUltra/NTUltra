/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 18
maxhealth = 55;
if loops > 0
	maxhealth = 61;
EnemyHealthAdjustments();

spr_idle = sprInvertedJungleGorilla;
spr_walk = sprInvertedJungleGorillaWalk;
spr_hurt = sprInvertedJungleGorillaHurt;
spr_dead = sprInvertedJungleGorillaDead;
spr_gun = sprInvertedJungleGorillaGun;

projectileSpeedDif = 0.1;
fireDelay = 4;
projectileSpeed -= 2.5;
actTime -= 3;
maxSpeed += 0.4;
acc += 2;
deathProjectile += 3;