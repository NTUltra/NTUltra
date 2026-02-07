raddrop = 12
maxhealth = 200//60 in BANNILLA;
scrBossHealthBuff();
mySize = 1
event_inherited();
isBoss = true;
meleedamage = 4;
radAmmo = 60;
maxRadAmmo = radAmmo;
spr_idle = sprEnemyHorrorIdle
spr_walk = sprEnemyHorrorWalk
spr_hurt = sprEnemyHorrorHurt
spr_dead = sprEnemyHorrorDead

snd_hurt = sndMutant11Hurt
snd_dead = sndMutant11Dead
snd_melee = sndDogGuardianMelee
//behavior
walk = 0
gunangle = 0;
alarm[1] = 20;
if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1]+=45;
	scrGiveSnooze();
}
wkick = 0
actTime = 12;
aimLerp = 0.3;
sleeping = true;
projectileSpeed = 11;
fireRate = 2;
mySound = noone;
acc = 0.8;
maxSpeed = 3.5;
consecutiveShots = 0;
lightingLength = 9;
alarm[4] = 7;
projectileType = HostileHorrorBullet;
wasBehindWall = false;