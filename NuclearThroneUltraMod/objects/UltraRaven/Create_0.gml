event_inherited();
raddrop = 16;
maxhealth = 25;
fireChance = 3;
maxRange += 50;
minRange = 14;
EnemyHealthAdjustments();
spr_idle = sprUltraRavenIdle;
spr_walk = sprUltraRavenWalk;
spr_hurt = sprUltraRavenHurt;
spr_dead = sprUltraRavenDead;
gunspr = sprUltraRavenGun;
ravenFly = UltraRavenFly;
maxAmmo = 6;
maxRange = 200;
minRange = 15;
actTime -= 4;
projectileSpeed += 1.5;
onTopOfWall = false;
if random(10) < 2
{
	alarm[5] = 5;
	alarm[1] = 0;
}