raddrop = 0
maxhealth = 1400
meleedamage = 20
mySize = 4
if instance_exists(InvertedNuclearThrone1)
	maxhealth = 1200;
scrBossHealthBuff();
event_inherited()

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
actTime = 12;
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
laserDelay = 60;
gunDelay = 75;
projectileSpeed = 5.4;
projectileSpeedAdd = -0.7;
gunInBetween = 6;
normalGunAngle = gunangle;
crazyDelay = 8;
crazyStep = 28;
alarm[8] = 30;
crazyAmmoReverseMax = 20;
crazyAmmoReverse = crazyAmmoReverseMax;
crazyPattern = true;
crazyProjectileSpeed = 3.5;
crazyGap = 50;
crazyWaveSpeed = 8;
noY = verticalDistanceBeteenTanks * 0.5;
noYDir = 1;


if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1] += 50;
	alarm[8] += 50;
	scrGiveSnooze();
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