maxhealth = 100;//230
mySize = 3;
raddrop = 10;
spr_inactive = sprBigGeneratorInactive;
spr_idle = spr_inactive;
spr_walk = spr_inactive;
spr_hurt = spr_inactive;
spr_dead = sprBigGeneratorDead

event_inherited()
right = 1;
team = 3;
maxhealth = 80;
meleedamage = 0;
loops = GetPlayerLoops();
if loops > 0
	maxhealth = 50;
if scrIsGamemode(5)//1HP gamemode
	maxhealth = 1;
my_health = maxhealth;
canFly = false;
team = 1;
spr_hurt_actual = sprBigGeneratorHurt;
spr_activate = sprBigGeneratorActivate;
spr_active = sprBigGenerator;
image_xscale = 1;
snd_hurt = sndGeneratorBreak
scrInitDrops(1);