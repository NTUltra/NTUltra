raddrop = 20
maxhealth = 15
meleedamage = 0
mySize = 1

if UberCont.loops>1
maxhealth=20;

event_inherited()

spr_idle = sprInvertedSuperFrogIdle
spr_walk = sprInvertedSuperFrogWalk
spr_hurt = sprInvertedSuperFrogHurt
spr_dead = sprInvertedSuperFrogDead


snd_dead = sndSuperFrogExplode

//behavior
alarm[1] = 20+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

close = 0

alarm[2] = 5

scrInitDrops(1);


if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
{
	sleeping = true;
	alarm[1] += 60;
	scrGiveSnooze();
}
else
{
	repeat(14)
		instance_create(x,y,ToxicGas)	
}
