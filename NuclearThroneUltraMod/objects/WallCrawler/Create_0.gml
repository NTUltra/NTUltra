raddrop = 60
maxhealth = 620
mySize = 3
scrBossHealthBuff();
event_inherited()
meleedamage = 5

isInverted = false;
spr_idle = sprWallCrawler
spr_walk = sprWallCrawler
spr_hurt = sprWallCrawlerHurt
spr_dead = sprWallCrawlerDead
spr_hidden = spr_idle;
spr_hidden_hurt = spr_hurt;
spr_hide = sprWallCrawlerHide;
spr_expose = sprWallCrawlerExposed;
spr_expose_hurt = sprWallCrawlerExposedHurt;

snd_hurt = sndWallCrawlerHurt;
snd_dead = sndWallCrawlerDead;
snd_melee = sndDogGuardianMelee;
//behavior
walk = 0
fallWalk = 0;
gunangle = 0;
alarm[1] = 30+random(90)
wkick = 0
actTime = 16;

projectileSpeed = 5.8;
fallOutDirection = 0;
acc = 0.8;
maxSpeed = 3.8;
myWall = noone;
firstHit = false;
range = 80;
loops = GetPlayerLoops();
if loops > 3
{
	range += 8;
	actTime -= 1;
}
if loops > 4
{
	range += 8;
	actTime -= 1;
}
if loops > 5
{
	range += 16;
	actTime -= 2;
	//Die already!
}
if instance_exists(Wall)
{
	var n = noone;
	if instance_exists(Player)
	{
		n = instance_furthest(
		Player.x*0.8,
		Player.y*0.8,
		Wall);
	}
	else
	{
		n = instance_furthest(x*0.8,y*0.8,Wall);
	}
	if n != noone
	{
		x = n.x+8;
		y = n.y;
		myWall = n;
	}
}
targetWalkOriginX = x;
targetWalkOriginY = y;
targetWalkX = x;
targetWalkY = y;
targetWalkTime = 2;
targetWalkSpeed = 0.2;
wallDestroyedStunTime = 40;

normalBullet = GuardianBulletSpawn;

reachedHalfHealth = false;