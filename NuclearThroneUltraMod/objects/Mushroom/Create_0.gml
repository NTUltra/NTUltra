maxhealth = 20
mySize = 1

spr_idle = sprMushroom
spr_hurt = sprMushroomHurt
spr_dead = sprMushroomDead

event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))


//snd_hurt = sndHitRock

