/// @description Init

// Inherit the parent event
event_inherited();

spr_idle = sprInvertedJellyFish
spr_walk = sprInvertedJellyFish
spr_hurt = sprInvertedJellyFishHurt
spr_dead = sprInvertedJellyFishDead
spr_fire = sprInvertedJellyFishFire

length += 2;
maxSpeed = 3;
maxAmmo = 4;
meleedamage = 3;
maxhealth = 5;
raddrop = 12;
tellTime = 10;
actTime = 5;
if loops > 0
{
	actTime = 4;
	tellTime = 8;
	maxSpeed = 3.5
}
	
EnemyHealthAdjustments();