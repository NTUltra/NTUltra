/// @description Tweak

// Inherit the parent event
event_inherited();
raddrop += 2
maxhealth = 30
my_health = maxhealth;
EnemyHealthAdjustments();
actTime = 9;
spr_idle = sprInvertedNewGuardianIdle;
spr_walk = sprInvertedNewGuardianIdle;
spr_normal = sprInvertedNewGuardianIdle;
spr_hurt = sprInvertedNewGuardianHurt;
spr_dead = sprInvertedNewGuardianDead;
spr_appear = sprInvertedNewGuardianAppear;
spr_disappear = sprInvertedNewGuardianDisappear;
spr_fire = sprInvertedNewGuardianFire;

if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
