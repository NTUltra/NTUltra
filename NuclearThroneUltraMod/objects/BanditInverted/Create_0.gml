raddrop = 4//original bandit 2
maxhealth = 3

if UberCont.loops>1
maxhealth=4;

meleedamage = 0
mySize = 1

event_inherited()
if scrIsHardMode() && random(5) < 1//HARD MODE
{
	instance_destroy(id,false);
	instance_create(x,y,UltraBandit);
}
if GetPlayerLoops() > 2
{
	instance_destroy(id,false);
	instance_create(x,y,FreakBandit);
}
spr_idle = sprBanditInvertIdle
spr_walk = sprBanditInvertWalk
spr_hurt = sprBanditInvertHurt
spr_dead = sprBanditInvertDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
wkick = 0

