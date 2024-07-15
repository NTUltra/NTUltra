maxhealth = 150;//230
mySize = 2;
if scrIsGamemode(5)//1HP gamemode
	maxhealth = 1;
spr_inactive = sprBigGeneratorInactive;
spr_idle = spr_inactive
spr_hurt = spr_inactive
spr_dead = sprBigGeneratorDead
loops = GetPlayerLoops();
if loops > 0
	maxhealth = 50;
event_inherited()
team = 1;
spr_hurt_actual = sprBigGeneratorHurt;
spr_activate = sprBigGeneratorActivate;
spr_active = sprBigGenerator;
image_xscale = 1;
snd_hurt = sndGeneratorBreak
scrInitDrops(1);