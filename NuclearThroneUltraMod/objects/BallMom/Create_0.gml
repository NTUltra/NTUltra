raddrop = 100
maxhealth = 470
meleedamage = 10
mySize = 3

scrBossHealthBuff();


event_inherited()
spr_idle = sprFrogQueenIdle
spr_walk = sprFrogQueenWalk
spr_hurt = sprFrogQueenHurt
spr_dead = sprFrogQueenDead
spr_fire = sprFrogQueenFire;
spr_dying = sprFrogQueenDying;

snd_dead = sndBallMamaDead1;
snd_hurt = sndBallMamaHurt;

//behavior
alarm[1] = 40+random(40)

existTime = -60;
close = 0
active = false;
theSpeed = 0.5 + clamp((GetPlayerLoops()-1)*0.25,0,1.5);
maxSpeed = 1 + clamp((GetPlayerLoops()*0.5),0,3);
halfway = false;
almostDead = false;
sndtaunt = 0
tauntdelay = 0
isInverted = false;
scrBossFloor();
scrAddDrops(1);