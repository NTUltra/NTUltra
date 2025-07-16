raddrop = 30
maxhealth = 30
mySize = 2
event_inherited()
gunangle = 0;
walk = 0;
meleedamage = 0
actualMeleeDamage = 6;
venomous = true;
spr_inactive = sprVenusRadTrap;
spr_idle = sprVenusRadTrapIdle
spr_walk = sprVenusRadTrapIdle
spr_hurt = sprVenusRadTrapHurt
spr_dead = sprVenusRadTrapDead
spr_fire = sprVenusRadTrapFire;
spr_active = sprVenusRadTrapActivate;


snd_hurt = sndVenusRadTrapHurt
snd_dead = sndVenusRadTrapDead
active = 0;
//behavior
alarm[1] = 60;//30+random(90)
wkick = 0
actTime = 10;

activateRange = 44;
acc = 0;
maxSpeed = 0;
imageIndex = 0;
routines = 100 + irandom(200);
isInverted = false;