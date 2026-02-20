raddrop = 6
maxhealth = 42
mySize = 3

event_inherited()
meleedamage = 4;

spr_idle = sprCourtyardTankGuardianIdle
spr_walk = sprCourtyardTankGuardianWalk
spr_hurt = sprCourtyardTankGuardianHurt
spr_dead = sprCourtyardTankGuardianDead
spr_fire = sprCourtyardTankGuardianFire;

snd_hurt = sndHitRock
snd_dead = sndScorpionDie
snd_melee = sndScorpionMelee

//behavior
walk = 0
alarm[1] = 30+random(90)
actTime = 14;
gunangle = 0;
acc = 1;
maxSpeed = 4;
projectileSpeed = 2;
myShield = instance_create_depth(x,y,depth-1,CourtyardTankShield);
with myShield
{
	creator = other.id;	
}
instance_create(x,y,WallBreak);