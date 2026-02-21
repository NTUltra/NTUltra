raddrop = 3
maxhealth = 8
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
	if random(3) < 1 || (instance_exists(Player) && Player.area != 1)
	{
		instance_destroy(id,false);
		if object_index == InvertedBanditSquare
			instance_create(x,y,InvertedFreakBandit);
		else
			instance_create(x,y,FreakBandit);
	}
}
spr_idle = sprSnowBanditIdle
spr_walk = sprSnowBanditWalk
spr_hurt = sprSnowBanditHurt
spr_dead = sprSnowBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
maxDetectRange = 150;
maxSpeed = 3;
actTime = 10;
pSpeed = 4;
minDistance = 16;
attackRange = 300;
if loops > 0
{
	actTime = 13;
	maxDetectRange += 100;
	attackRange += 100;
	pSpeed = 4.5;
	minDistance = 0;
}