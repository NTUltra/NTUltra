raddrop = 4//original bandit 2
maxhealth = 3

loops = GetPlayerLoops();
if loops > 0
	maxhealth = 6;

meleedamage = 0
mySize = 1

event_inherited()
if scrIsHardMode() && random(5) < 1//HARD MODE
{
	instance_destroy(id,false);
	instance_create(x,y,UltraBandit);
}
if loops > 2
{
	if random(3) < 1 || (instance_exists(Player) && Player.area != 1)
	{
		instance_destroy(id,false);
		instance_create(x,y,InvertedFreakBandit);
	}
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

