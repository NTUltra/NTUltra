/// @description Adjust for inflation

// Inherit the parent event
event_inherited();
meleedamage = 5;
maxhealth = 255;
loops = GetPlayerLoops()
actTime -= 1;
if loops > 0
{
	maxhealth = 330;
	maxSpeed += 1;
	acc += 1;
}
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprInvertedGraveyardFishIdle
spr_walk = sprInvertedGraveyardFishWalk
spr_chrg = spr_walk;
spr_hurt = sprInvertedGraveyardFishHurt
spr_dead = sprInvertedGraveyardFishDead
spr_fire = sprInvertedGraveyardFishFire
actTime -= 4;
fireRate += 1;
originalProjectileSpeed = 1;
projectileSpeed = originalProjectileSpeed;
dashDuration += 2;
acc ++;
maxSpeed ++;
homeProjectileSpeed = 1.5;
if instance_exists(PitNavigation) && loops < 1
{
	raddrop -= 30;
}