var loops = GetPlayerLoops();
maxhealth = 30 * clamp(loops+1,1,4)
drawShadow = true;
spr_idle = sprVenusCar
spr_hurt = sprVenusCarHurt
spr_dead = sprScorchmark

mySize = 1

event_inherited()

snd_hurt = sndHitMetal
drawShadow = false;
image_xscale = 1

alarm[1] = 2;