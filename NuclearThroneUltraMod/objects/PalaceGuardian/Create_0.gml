raddrop = 10
maxhealth = 36//35
meleedamage = 2;
mySize = 4

event_inherited()

actTime = 20;
spr_idle = sprNewGuardianIdle;
spr_walk = sprNewGuardianIdle;
spr_normal = sprNewGuardianIdle;
spr_hurt = sprNewGuardianHurt;
spr_dead = sprNewGuardianDead;
spr_appear = sprNewGuardianAppear;
spr_disappear = sprNewGuardianDisappear;
spr_fire = sprNewGuardianFire;

snd_hurt = sndGuardianHurt;
snd_dead = sndGuardianDead;
snd_disappear = sndGuardianDisappear;
snd_appear = sndGuardianAppear;
//behavior
walk = 0
fire = false;
gunangle = 0;
alarm[1] = 30+random(90)
wkick = 0
friction = 6;
instance_create(x,y,WallBreak);
depth = -2;