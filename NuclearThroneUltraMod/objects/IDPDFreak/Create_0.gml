raddrop = 25
maxhealth = 25
meleedamage = 5
size = 1
instance_create(x,y,WallBreak);
event_inherited()
team = 4;

spr_idle = sprPopoFreakIdle;
spr_walk = sprPopoFreakWalk;
spr_hurt = sprPopoFreakHurt;
spr_dead = sprPopoFreakDead;

snd_hurt = sndFreakPopoHurt
snd_dead = sndFreakPopoDead

//behavior
walk = 0
if right < 1
	gunangle = 270;
else
	gunangle = 0;
alarm[1] = 30+random(60)
wkick = 0
actTime = 10;
maxAmmo = 4;
ammo = maxAmmo;
bulletMaxOffset = 32;
bulletOffset = bulletMaxOffset;
projectileSpeed = 3.5;
nadeSpeed = 1;
fireRate = 4;
actDelayOnFire = 4;
loops = GetPlayerLoops()
lifes = clamp(1 + (loops - 3),1,2);
maxWalkSpeed = 3;
bulletGap = 0.73;
nadeAmount = 1;
if loops > 8
{
	nadeAmount = 3;
	nadeSpeed = 4;
	projectileSpeed = 4;
	actTime = 6;
	fireRate = 1;
	actDelayOnFire = 0.5;
	maxAmmo = 10;
	bulletMaxOffset = 46;
	maxWalkSpeed = 4.5;
	fireRate = 1;
	actDelayOnFire = 1;
	bulletGap = 0.84;
}
else if loops > 6
{
	nadeAmount = 3;
	nadeSpeed = 3.5;
	projectileSpeed = 3.8;
	actTime = 7;
	fireRate = 2;
	actDelayOnFire = 2;
	maxAmmo = 8;
	bulletMaxOffset = 40;
	maxWalkSpeed = 4;
	bulletGap = 0.8;
}
else if loops > 4
{
	nadeAmount = 3;
	nadeSpeed = 3;
	projectileSpeed = 3.7;
	actTime = 8;
	fireRate = 1;
	actDelayOnFire = 1;
	maxAmmo = 6;
	bulletMaxOffset = 36;
	maxWalkSpeed = 3.5;
	fireRate = 3;
	actDelayOnFire = 3;
	bulletGap = 0.77;
}
else if loops > 3
{
	
	nadeSpeed = 2;
	projectileSpeed = 3.6;
	actTime = 9;
	maxAmmo = 5;
	bulletMaxOffset = 34;
	bulletGap = 0.75;
}

offsetStep = (bulletMaxOffset/maxAmmo)*bulletGap;
