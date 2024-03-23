raddrop = 0
maxhealth = 21;
meleedamage = 0
mySize = 1

event_inherited();
alarm[10] = 0;
creator = noone;
scrInitDrops(1);
snd_play(sndGluttonSpawnCrown,0.02);
spr_idle = sprCrown0Idle
spr_walk = sprCrown0Walk

snd_hurt = sndCrownRandom
snd_dead = sndCrownRandom

targetx = x
targety = y

image_speed = 0.4


alarm[1] = 30+random(90)
alarm[0] = 10+random(10)
maxSpeed = 2;
walk = 0
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 40;
	alarm[0] += 40;
	scrGiveSnooze();
}