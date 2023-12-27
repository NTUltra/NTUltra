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
maxhealth = 5;
my_health = maxhealth
rate = 8;
actTime = 10;
if loops > 0
{
	actTime = 8;
	rate = 6;
	raddrop += 1;
	maxhealth = 14;
	my_health = maxhealth
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