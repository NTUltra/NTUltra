raddrop = 2
maxhealth = 23
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprBanditSquareIdle
spr_walk = sprBanditSquareWalk
spr_hurt = sprBanditSquareHurt
spr_dead = sprBanditSquareDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
maxDetectRange = 250;
shankRange = 120;
loops = GetPlayerLoops();
actTime = 20;
pSpeed = 3.4;
acc = 1.4;
maxSpeed = 4.25;