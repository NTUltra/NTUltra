raddrop = 0
maxhealth = 50
meleedamage = 0
size = 1
scrCrownOfPopoRad(5);
event_inherited()

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

