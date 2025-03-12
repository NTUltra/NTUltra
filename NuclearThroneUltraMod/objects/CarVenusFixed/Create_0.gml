var loops = GetPlayerLoops();
maxhealth = 200 * clamp(loops+1,1,4)
spr_idle = sprVenusCarFix
spr_hurt = sprVenusCarFixedHurt
spr_dead = sprScorchmark

mySize = 1

event_inherited()
canMoveOver = true;
instance_create(x,y,WallBreak);
snd_hurt = sndHitMetal

image_xscale = 1
used = false;
name = "CAR"

