/// @description Tweaks

// Inherit the parent event
event_inherited();
actTime -= 2;
raddrop = 26;
maxhealth = 130
my_health = maxhealth;
EnemyHealthAdjustments();
maxSpeed = 3;
maxJumpSpeed += 0.4;
jumpAcc += 0.15;
jumpDuration += 1;
spr_normal = sprInvertedDogGuardianWalk;
spr_idle = sprInvertedDogGuardianWalk
spr_walk = sprInvertedDogGuardianWalk
spr_hurt = sprInvertedDogGuardianHurt
spr_dead = sprInvertedDogGuardianDead
spr_fire = sprInvertedDogGuardianCharge;
spr_jump_up = sprInvertedDogGuardianJumpUp;
spr_jump_down = sprInvertedDogGuardianJumpDown;
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;