raddrop = 2
maxhealth = 4
meleedamage = 0
mySize = 1

event_inherited()
loops = GetPlayerLoops();
if scrIsHardMode() && random(5) < 1//HARD MODE
{
	instance_destroy(id,false);
	instance_create(x,y,UltraBandit);
}
if loops > 2 && choose(false,true,false)
{
	instance_destroy(id,false);
	if object_index == InvertedBanditSquare
		instance_create(x,y,InvertedFreakBandit);
	else
		instance_create(x,y,FreakBandit);		
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
actTime = 21;
pSpeed = 3.6;
minDistance = 54;
if loops > 0
{
	actTime = 13;
	maxDetectRange += 90;
	pSpeed = 4.1;
	minDistance = 0;
}