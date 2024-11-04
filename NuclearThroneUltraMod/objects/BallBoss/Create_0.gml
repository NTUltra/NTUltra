raddrop = 600
maxhealth = 3500//2500
if instance_exists(InvaderBossSpawnPortal)
{
	maxhealth = 900;
}
meleedamage = 0
mySize = 2
scrBossHealthBuff();

event_inherited()
targetHealth = maxhealth;
instance_create(x,y,DramaCamera);
spr_idle = sprStatueBossIdle
spr_walk = sprStatueBossIdle
spr_hurt = sprStatueBossHurt
spr_dead = sprStatueBossDead

snd_hurt = sndPillarBreak
snd_dead = sndPillarBreak

//behavior
alarm[1] = 150;
wkick = 0
actTime = 15;
myCompanions = [];
amountOfProjectiles = 54//64;
alarm[2] = 10;
alarm[3] = 110;
alarm[7] = 200;
spinRate = 1.8;
pSpeed = 2.8;
waveSpeed = 3.2;
maxSpeed = 2.5;
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
amountOfSpinBulletProjectiles = 8;
targetDirection = 0;
if instance_exists(Player)
	targetDirection = point_direction(x,y,Player.x,Player.y);
	
myShield = -1;
shieldDistance = 48;
snd_play(sndBallBossAppear,0,false,false,3,false,false,1,false);

anchorX = x;
anchorY = y;

spinAttackFireRate = 20;
spinAttackMaxAmmo = 0;
spinAttackAmmo = 0;
friction = 0.5;
if scrIsHardMode()//HARD MODE
{
	maxhealth += 200;
	maxSpeed += 0.2;
	spinRate += 0.2;
	spinAttackMaxAmmo ++;
	pSpeed += 0.4;
	amountOfSpinBulletProjectiles += 1;
}
firstTime = true;
