raddrop = 3
maxhealth = 16
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprUltraProtectorIdle
spr_walk = sprUltraProtectorWalk
spr_hurt = sprUltraProtectorHurt
spr_dead = sprUltraProtectorDead

snd_hurt = sndProtectorHit
snd_dead = sndProtectorDead

//behavior
walk = 0
gunangle = 90;//Straight upwards
alarm[1] = 30+random(90)
wkick = 0
actTime = 14;

acc = 0.8;
maxSpeed = 3;

myGuy = noone;
shieldX = x;
shieldY = y;
shieldRadius = 32;
connectionTime = 0;
myConnectionBullet = noone;
holdBulletTime = 15;
bulletMoveSpeed = 0.02;
lineCol = make_colour_rgb(255,25,143);
circleCol = make_colour_rgb(0,255,255);