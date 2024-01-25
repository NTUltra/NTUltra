raddrop = 2
maxhealth = 4
meleedamage = 0
mySize = 1

event_inherited()
if scrIsHardMode() && random(5) < 1//HARD MODE
{
	instance_destroy(id,false);
	instance_create(x,y,UltraBandit);
}
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
maxDetectRange = 150;
maxSpeed = 3;
loops = GetPlayerLoops();
actTime = 20;
pSpeed = 3.6;
if loops > 0
{
	actTime = 13;
	maxDetectRange += 90;
	pSpeed = 4.1;
}