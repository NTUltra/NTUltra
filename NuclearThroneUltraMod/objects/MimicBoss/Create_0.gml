raddrop = 10
loops = GetPlayerLoops();
if loops < 1
	maxhealth = 280;
else
	maxhealth = 380;
scrBossHealthBuff();
isInverted = true;
if instance_exists(Player)
{
	if Player.area == 140 && loops < 1
		maxhealth = max(1,maxhealth-90);
	else if Player.area == 137
	{
		maxhealth += 100;
	}
	else
	{
		isInverted = false;
	}
}
meleedamage = 0
mySize = 2

event_inherited();
isBoss = true;
myMimicFriend = noone;
scrAddDrops(2);
spawnedDuplicate = false;
targetSecondary = false;
team = 6;
spr_idle = sprMutant1Idle
spr_walk = sprMutant1Walk
spr_hurt = sprMutant1Hurt
spr_dead = sprMutant1Dead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
wkick = 0
actTime = 6;

acc = 0.9;
maxSpeed = 4;
wep = 0;
bwep = 0;
cwep = 0;
weaponType = -1;
maxAmmo = 6;
ammo = 6;
fireRate = 2;
wakeupTime = 10;
race = 1;
tellTime = 13;
if loops < 1
{
	wakeupTime += 5;
	tellTime += 4;
	actTime += 2;
}
else if loops > 1
{
	tellTime -= 1;
	actTime -= 1;
	if loops > 2
	{
		tellTime -= 1;
		actTime -= 1;
	}
}
wepangle = choose(-140,140)
wepflip = 1
smackRange = 8;
smackSpeed = 3
firstTime = true;
gunSprite = sprNoGun;
if instance_exists(Player)
{
	event_user(1);
}
else
{
	visible = false;
	alarm[8] = 2;
}
alarm[1] = wakeupTime;
alarm[10] = 90;