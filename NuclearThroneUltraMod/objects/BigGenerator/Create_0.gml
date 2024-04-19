maxhealth = 200;//230
mySize = 2;

spr_inactive = sprBigGeneratorInactive;
spr_idle = spr_inactive
spr_hurt = sprBigGeneratorInactive
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