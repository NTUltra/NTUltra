raddrop = 40;
maxhealth = 245
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 55;
scrBossHealthBuff();
mySize = 3
event_inherited()

team = 7;
canFly = true;
meleedamage = 0
spr_idle = sprPitGhostBoss;
spr_walk = sprPitGhostBoss;
spr_hurt = sprPitGhostBossHurt;
spr_dead = sprPitGhostBossDead;
spr_fire = sprPitGhostBossFire1;
spr_fire_laser = sprPitGhostBossFire2;

snd_hurt = sndGhostHurt
snd_dead = sndGhostDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 10;
wkick = 0
actTime = 12;

acc = 2;
maxSpeed = 4;
materializeRange = 140;
justAroundWall = true;
targetPreviousX = x;
targetPreviousY = y;
targetX = x;
targetY = y;
targetLerp = 0;
goToTarget = false;
vspeed = -2;
event_user(0);
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 60;
	scrGiveSnooze();
}
maxAmmo = 3;
scrAddDrops(4);
reachedHalfHealth = false;
if loops < 1 && !scrIsHardMode()
	with VenomTrap
	{
		instance_destroy();	
	}