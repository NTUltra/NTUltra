loops = GetPlayerLoops();
maxhealth = 60;
if loops > 0 || scrIsHardMode()
	maxhealth = 80 * clamp(loops*6,1,14)
mySize = 1
spr_idle = sprGraveyardEntrance;
spr_hurt = sprGraveyardEntranceHurt

spr_dead = sprGraveyardEntranceDead
name = "TOUCH?"

event_inherited();
shadowSprite = shd24;
shadowYoffset = - 8;
snd_hurt = sndHitRock
alarm[1] = 1200;
if scrIsHardMode()
alarm[1] += 120;
alarm[1] *= clamp(loops*1.3,1,4)
instance_create(x,y,BigWallBreak);
alarm[2] = 30;