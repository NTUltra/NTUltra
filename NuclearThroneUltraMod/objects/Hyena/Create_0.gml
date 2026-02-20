raddrop = 9
maxhealth = 12
mySize = 2
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 3;
event_inherited()
meleedamage = 3

loops = GetPlayerLoops();
maxSpeed = 3.95;
actTime = 14;
healTime = 15;
if loops > 0
{
	maxSpeed = 4.1;
	actTime = 190;
}
if loops > 4
	maxSpeed = 4.5;

acc = 0.7;
accCharge = 1.7;
spr_idle = sprHyenaIdle
spr_eat = sprHyenaEat;
spr_walk = sprHyenaWalk
spr_hurt = sprHyenaHurt
spr_dead = sprHyenaDead

alarm[0] = 1;
snd_hurt = sndHyenaHurt
snd_dead = sndHyenaDeath
snd_melee = sndHyenaMelee
//behavior
walk = 0
alarm[1] = 30+random(90)
corpseTarget = noone;
