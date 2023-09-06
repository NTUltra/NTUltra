event_inherited();
raddrop = 16;
maxhealth = 25;
EnemyHealthAdjustments();
spr_idle = sprUltraRavenIdle;
spr_walk = sprUltraRavenWalk;
spr_hurt = sprUltraRavenHurt;
spr_dead = sprUltraRavenDead;
gunspr = sprUltraRavenGun;
ravenFly = UltraRavenFly;
maxAmmo = 6;
maxRange = 200;
minRange = 48;
actTime -= 6;
projectileSpeed += 1.5;
if random(10) < 2
{
	alarm[5] = 5;
	alarm[1] = 0;
}