maxhealth = 100;//230
mySize = 2;
spr_inactive = sprBigGeneratorInactive;
spr_idle = spr_inactive
spr_hurt = spr_inactive
spr_dead = sprBigGeneratorDead

event_inherited()

my_health = maxhealth;
canFly = false;
team = 1;
spr_hurt_actual = sprBigGeneratorHurt;
spr_activate = sprBigGeneratorActivate;
spr_active = sprBigGenerator;
image_xscale = 1;
snd_hurt = sndGeneratorBreak
scrInitDrops(1);