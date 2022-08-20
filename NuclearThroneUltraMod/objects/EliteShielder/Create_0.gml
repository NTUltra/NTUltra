raddrop = 0
maxhealth = 50
meleedamage = 0
size = 1
scrCrownOfPopoRad(8);
event_inherited()

spr_idle = sprEliteShielderIdle
spr_walk = sprEliteShielderWalk
spr_hurt = sprEliteShielderHurt
spr_dead = sprEliteShielderDead
male=choose(true,false);

snd_hurt = sndEliteShielderHurt
snd_dead = sndEliteShielderDead
snd_play(sndEliteShielderEnter,0.01,true);


team = 3

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(15)
wkick = 0
roll = 1
angle = 0
ammo = 10

canshield=true;
Shielding=false;
xx=x;
yy=y;
freeze = 20

