var loops = GetPlayerLoops();
maxhealth = 30 * clamp(loops+1,1,4)
spr_idle = sprVenusCarFix
spr_hurt = sprVenusCarFixedHurt
spr_dead = sprScorchmark

size = 1

event_inherited()
canMoveOver = true;

snd_hurt = sndHitMetal

image_xscale = 1

name = "CAR"

