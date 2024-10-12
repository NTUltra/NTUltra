raddrop = 12
maxhealth = 25
meleedamage = 0
mySize = 1
loops = GetPlayerLoops();
if loops>1
	maxhealth=29;

event_inherited()

spr_idle = sprInvertedCardGuyIdle
spr_walk = sprInvertedCardGuyWalk
spr_hurt = sprInvertedCardGuyHurt
spr_dead = sprInvertedCardGuyDead

//snd_hurt = sndBanditHit
//snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 70+random(90)

if loops>0
	alarm[1] = 60+random(60);


wkick = 0

