event_inherited()
raddrop = 20
maxhealth = 19
EnemyHealthAdjustments()
spr_idle = sprInvertedBuffGatorIdle
spr_walk = sprInvertedBuffGatorWalk
spr_hurt = sprInvertedBuffGatorHurt
spr_dead = sprInvertedBuffGatorDead

actTime -= 4;
tellTime -= 4;
range = 142;
maxSpeed = 3.4;
loops = GetPlayerLoops();
if loops > 0
{
	actTime -= 2;
	tellTime -= 2;
}