raddrop = 11
maxhealth = 12
meleedamage = 3
mySize = 2

event_inherited()

loops = GetPlayerLoops();
maxSpeed = 4;
actTime = 14;
healTime = 15;
if loops > 0
{
	maxSpeed = 4.5;
	actTime = 10;
}
if loops > 4
	maxSpeed = 5;

acc = 0.6;
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
