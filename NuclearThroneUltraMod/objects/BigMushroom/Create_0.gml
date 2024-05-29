maxhealth = 500
mySize = 1

spr_idle = sprBigMushroom
spr_hurt = sprBigMushroomHurt
spr_dead = sprBigMushroomDead

event_inherited()
move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

name = "EAT MUSHROOM?"
instance_create(x,y,WallBreak);
//snd_hurt = sndHitRock

