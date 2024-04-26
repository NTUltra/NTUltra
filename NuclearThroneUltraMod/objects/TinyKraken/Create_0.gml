raddrop = 4
hurt_pitch_variation = 0;
existTime = 0;
gun = sprBanditGun;
spr_idle = sprTinyKraken;
spr_walk = sprTinyKraken;
spr_hurt = sprTinyKrakenHurt;
spr_dead = sprTinyKrakenDead;
meleedamage = 0
mySize = 1

event_inherited();
depth = -2;
maxSpeed = 4.5;
image_speed = 0.4
friction = 0.4
right = choose(1,-1)
 loops = GetPlayerLoops();
maxhealth = 8;
my_health = maxhealth
actTime = 10;
rate = 9;
raddrop += 1;
maxhealth = 15;
my_health = maxhealth
if instance_number(TinyKraken) > 1
{
	maxhealth = 12;
	rate += 1;
	actTime += 1;
	my_health = maxhealth;
}
if instance_number(TinyKraken) > 3
{
	maxhealth -= 3;
	rate += 2;
	actTime += 2;
	my_health = maxhealth;
}
if scrIsHardMode()
{
	maxhealth += 2;
	my_health = maxhealth;
}
target = noone;
team = 2

snd_hurt = sndTentacle2
snd_dead = sndTentacle

//behavior
walk = 0
gunangle = 0
scrInitDrops(2);
alarm[1] = 10;
randomAngle = random(360);
randomAngleDir = choose(40,60,-40,-60);
alarm[2] = 10;

with Player {
	tinyKrakenSpawned += 1
	if race == 24 && tinyKrakenSpawned == 4
	{
		scrUnlockCSkin(24,"FOR SUMMONING 4#TINY KRAKENS#IN ONE AREA",0);
	}
}