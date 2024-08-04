/// @description Tweak

// Inherit the parent event
event_inherited();
actTime = 7;
raddrop = 19
maxhealth = 30
my_health = maxhealth;
EnemyHealthAdjustments();
tellTime -= 10;
projectileSpeed += 1;
spr_normal = sprInvertedExploGuardianWalk;
spr_idle = spr_normal;
spr_walk = sprInvertedExploGuardianWalk;
spr_normal_hurt = sprInvertedExploGuardianHurt;
spr_hurt = spr_normal_hurt;
spr_dead = sprInvertedExploGuardianDead;
spr_charge = sprInvertedExploGuardianCharge;
spr_charge_hurt = sprInvertedExploGuardianChargeHurt;
spr_fire = sprInvertedExploGuardianFire;
exploBullet = InvertedExploGuardianBullet;

if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
