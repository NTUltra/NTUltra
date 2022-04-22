raddrop = 2
maxhealth = 800
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprStatueBossIdle
spr_walk = sprStatueBossIdle
spr_hurt = sprStatueBossHurt
spr_dead = sprStatueBossDead

snd_hurt = sndHitRock
snd_dead = sndPillarBreak

//behavior
alarm[1] = 160;
wkick = 0
actTime = 12;
myCompanions = [];
amountOfProjectiles = 54//64;
alarm[2] = 10;
alarm[3] = 160;
spinRate = 1.8;
pSpeed = 3;
maxSpeed = 1.8;
if instance_exists(Player) && Player.skill_got[12]
{
	spinRate -= 0.2;
}
wkick = 0;
myLasers = [];
reachHalfHealth = false;
reachLowHealth = false;
diag = true;
gunangle = 0;
lineOfFireOffset = 30;
spinBulletAngle = 0;
amountOfSpinBulletProjectiles = 10;
