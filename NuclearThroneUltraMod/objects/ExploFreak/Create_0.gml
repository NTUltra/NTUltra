raddrop = 10
maxhealth = 5
mySize = 1
droprate = 70;


event_inherited();
meleedamage = 2

spr_idle = sprExploFreakIdle
spr_walk = sprExploFreakWalk
spr_hurt = sprExploFreakHurt
spr_dead = sprExploFreakDead

snd_hurt = sndExploFreakHurt
snd_dead = sndExploFreakDead
snd_melee = sndExploFreakKillself

//behavior
alarm[1] = 50+random(30)
alarm[2] = 60;
if instance_exists(Player) && Player.skill_got[29]
	alarm[2] += 30;
walk = 0

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
maxSpeed = 3;
loops = GetPlayerLoops();
if loops > 0
	maxSpeed += 0.28;