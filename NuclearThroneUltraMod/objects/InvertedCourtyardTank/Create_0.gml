
event_inherited()
raddrop = 7
maxhealth = 24;
EnemyHealthAdjustments();
meleedamage = 7;
raddrop = 16;


spr_idle = sprInvertedCourtyardTankGuardianIdle
spr_walk = sprInvertedCourtyardTankGuardianWalk
spr_hurt = sprInvertedCourtyardTankGuardianHurt
spr_dead = sprInvertedCourtyardTankGuardianDead
spr_fire = sprInvertedCourtyardTankGuardianFire;


//behavior
actTime = 10;
gunangle = 0;
acc = 1.2;
maxSpeed = 4.5;
projectileSpeed = 1.5;

with myShield
{
	spr_default = sprInvertedCourtyardTankShield;
	spr_deflect = sprInvertedCourtyardTankShieldDeflect;
	spr_dissapear = sprInvertedCourtyardTankShieldDissappear;
	spr_spawn = sprInvertedCourtyardTankShieldAppear;
}