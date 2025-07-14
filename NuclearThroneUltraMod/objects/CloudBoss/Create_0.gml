raddrop = 30
maxhealth = 500
mySize = 3
loops = GetPlayerLoops();
if loops > 0
	maxhealth = 600;
scrBossHealthBuff();
event_inherited()
meleedamage = 3
canFly = true;
venomous = true;
spr_idle = sprCloudBoss
spr_walk = sprCloudBoss
spr_hurt = sprCloudBossHurt;
spr_dead = sprCloudBossDead;
spr_fire = sprCloudBossFire;
spr_disappear = sprCloudBossDisappear;

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 15;
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 70;
	scrGiveSnooze();
}
alarm[4] = 90;
wkick = 0
if loops < 1
	actTime = 16;
else
	actTime = 13;

acc = 2;
maxSpeed = 3;
time = 0;
squareProjectileSpeed = 4.5;
squareProjectileSpeedOff = 5.8
squareOffset = 17;
homingSpeed = 1.5;
laserAmount = 6;
smackRange = 12;
sneakTell = 20;
smackSpeed = 14;
reachedHalfHp = false;
sneakTime = 30;
isInverted = false;
homingDurationAdjustment = 15;
if loops > 0
{
	homingDurationAdjustment = 0;
	laserAmount = 8;
	squareProjectileSpeed = 5;
	squareProjectileSpeedOff = 6
	homingSpeed = 2;
}
instance_create(x,y,DramaCamera);
scrAddDrops(2);