/// @description Tweaks

// Inherit the parent event
event_inherited();
image_speed = 0.5;
raddrop = 19;
maxhealth = 55
my_health = maxhealth;
EnemyHealthAdjustments();
projectileSpeed += 2;
distance += 16;
rotateSpeed += 0.5
maxSpeed = 3.7
spr_normal = sprInvertedCubeGuardianWalk;
spr_idle = spr_normal;
spr_walk = sprInvertedCubeGuardianWalk;
spr_normal_hurt = sprInvertedCubeGuardianHurt;
spr_hurt = spr_normal_hurt;
spr_dead = sprInvertedCubeGuardianDead;
spr_charge = sprInvertedCubeGuardianFire;
spr_charge_hurt = sprInvertedCubeGuardianFireHurt;
spr_fire = sprInvertedCubeGuardianFire;
pullInStrength += 0.12;
rotateSpeed += 0.5;
distance += 16;
projectileSprite = sprInvertedSquareGuardianBullet;
exploBullet = InvertedExploGuardianBullet;

if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;