var loops = GetPlayerLoops();
maxhealth = 50 * clamp(loops+1,1,4)
drawShadow = true;
spr_idle = sprVenusCar
spr_hurt = sprVenusCarHurt
spr_dead = sprScorchmark

mySize = 1

event_inherited()
if instance_exists(UberCont) && !UberCont.unlocked_alt_routes
{
	instance_destroy(id,false);
	exit;
}
snd_hurt = sndHitMetal
drawShadow = false;
image_xscale = 1

alarm[1] = 2;
instance_create(x,y,WallBreak);