raddrop = 2
maxhealth = 1500
meleedamage = 0
size = 1

event_inherited()
instance_create(x,y,DramaCamera);
spr_idle = sprStatueBossIdle
spr_walk = sprStatueBossIdle
spr_hurt = sprStatueBossHurt
spr_dead = sprStatueBossDead

snd_hurt = sndPillarBreak
snd_dead = sndPillarBreak

//behavior
alarm[1] = 170;
wkick = 0
actTime = 16;
myCompanions = [];
amountOfProjectiles = 54//64;
alarm[2] = 10;
alarm[3] = 130;
spinRate = 1.8;
pSpeed = 3;
maxSpeed = 2.8;
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
