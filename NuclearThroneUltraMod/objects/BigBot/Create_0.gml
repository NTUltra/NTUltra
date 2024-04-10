raddrop = 14
maxhealth = 70
meleedamage = 0
mySize = 2

event_inherited()
spr_idle = sprBigBotIdle
spr_walk = sprBigBotWalk
spr_hurt = sprBigBotHurt
spr_dead = sprBigBotDead
spr_fire = sprBigBotFire;

snd_hurt = sndBigBotHit
snd_dead = sndBigBotDead

//behavior
walk = 0
alarm[1] = 90;
firstEntry = true;
fireDelay = 50;
wkick = 0
actTime = 14;
projectileSpeed = 1.7;
acc = 0.8;
maxSpeed = 2.5;
actTime = 60;
alarm[0] = 30;
type = 0;

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;