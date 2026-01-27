raddrop = 9
maxhealth = 22
mySize = 2

event_inherited()
meleedamage = 1

spr_idle = sprBigMaggotIdle
spr_walk = sprBigMaggotIdle
spr_hurt = sprBigMaggotHurt
spr_dead = sprBigMaggotDead

droprate = 0;
scrInitDrops(1);
if instance_exists(Player) && Player.skill_got[4]
{
	droprate = 10;
}

snd_hurt = sndBigMaggotHit
snd_dead = sndBigMaggotDie
snd_melee = sndBigMaggotBite

//behavior
alarm[1] = 10+random(10)
rage = 0

