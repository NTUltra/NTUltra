raddrop = 0
maxhealth = 1400
mySize = 4
if instance_exists(InvertedNuclearThrone1)
	maxhealth = 1200;
scrBossHealthBuff();
event_inherited()
meleedamage = 20

team = 3;
firstEntry = false;
isDown = false;
spr_idle = sprIDPDTankDrive
spr_walk = sprIDPDTankDrive
spr_hurt = sprIDPDTankHurt
spr_dead = sprIDPDTankDead

snd_hurt = sndVanHurt
sprGun = sprIDPDTankGun;
//behavior
walk = 0
gunangle = 270;
alarm[1] = 30;
wkick = 0
actTime = 22;
loops = GetPlayerLoops();
direction = 180;
moveDirection = 180;
acc = 2;
maxSpeed = 6;
reachedHalfHealth = false;
middleX = x;
moveRange = 96;
verticalDistanceBeteenTanks = 192;
if instance_exists(NuclearThrone1)
{
	middleX = NuclearThrone1.x;
}

walk = alarm[1] * 2 + 120;
laserY = 31;
laserDelay = 80;
gunDelay = 90;
projectileSpeed = 3;
projectileSpeedAdd = -0.2;
gunInBetween = 10;
normalGunAngle = gunangle;
crazyDelay = 10;
crazyStep = 30;
alarm[8] = 30;
crazyAmmoReverseMax = 20;
crazyAmmoReverse = crazyAmmoReverseMax;
crazyPattern = true;
crazyProjectileSpeed = 3.1;
crazyGap = 50;
crazyWaveSpeed = 8;
noY = verticalDistanceBeteenTanks * 0.5;
noYDir = 1;
idpdSpawnCooldown = 4;
if loops > 2
{
	crazyStep = 28;
	crazyDelay -= 1;
	gunDelay -= 15;
	actTime = 18;
	crazyProjectileSpeed += 0.1;
	gunInBetween -= 1;
}
if loops > 3
{
	crazyDelay -= 1;
	gunDelay -= 15;
	gunInBetween -= 1;
	projectileSpeed += 0.4;
	projectileSpeedAdd -= 0.2;
	laserDelay -= 10;
	crazyProjectileSpeed += 0.3;
}
if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1] += 50;
	alarm[8] += 50;
	scrGiveSnooze(y - 8);
}
with enemy
{
	if object_index != IDPDTankDown && object_index != IDPDTank
	&& object_index != NuclearThrone1 && object_index != NuclearThrone1Side
	&& object_index != InvertedNuclearThrone1 && object_index != NuclearThrone1Side
	{
		alarm[1] += 300;
	}
}