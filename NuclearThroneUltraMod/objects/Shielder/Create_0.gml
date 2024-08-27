raddrop = 0
maxhealth = 50
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(5);
event_inherited()

loops=GetPlayerLoops();
projectileSpeed = 7.6;
if loops > 0 
	projectileSpeed = 8;
spr_idle = sprShielderIdle
spr_walk = sprShielderWalk
spr_hurt = sprShielderHurt
spr_dead = sprShielderDead
male=choose(true,false);
if male
{
snd_hurt = sndShielderHurtM
snd_dead = sndShielderDeadM
snd_play(sndShielderEnterM,0.01,true);
}
else
{
snd_hurt = sndShielderHurtM
snd_dead = sndShielderDeadF
snd_play(sndShielderEnterF,0.01,true);
}

team = 3
wasBehindWall = false;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(15)
wkick = 0
roll = 1
angle = 0
ammo = 10

myShield=0;
Shielding=false;
xx=x;
yy=y;
freeze = 20

