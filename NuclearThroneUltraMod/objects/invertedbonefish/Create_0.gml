/// @description Init

// Inherit the parent event
event_inherited();

raddrop = 11
maxhealth = 3
meleedamage = 3
EnemyHealthAdjustments();

spr_idle = sprInvertedBoneFishIdle
spr_walk = sprInvertedBoneFishWalk
spr_hurt = sprInvertedBoneFishHurt
spr_dead = sprInvertedBoneFishDead
actTime -= 5;
maxSpeed = 7;
if instance_exists(Player)
{
if Player.loops>0
maxSpeed = 7.5
}

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;