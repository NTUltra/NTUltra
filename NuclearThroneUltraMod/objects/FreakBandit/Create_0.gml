raddrop = 7
maxhealth = 40
meleedamage = 0
mySize = 2

event_inherited()

spr_idle = sprFreakBanditIdle
spr_walk = sprFreakBanditWalk
spr_hurt = sprFreakBanditHurt
spr_dead = sprFreakBanditDead

snd_hurt = sndFreakBanditHit
snd_dead = sndFreakBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
maxDetectRange = 300;
smackDetectionRange = 120;
smackRange = 9;
smackSpeed = 6;
loops = GetPlayerLoops();
actTime = 12;
pSpeed = 7.5;
acc = 1.4;
maxSpeed = 4.2;
shootTell = 3;
smackTell = 14;
wepangle = choose(-140,140)
wepflip = 1