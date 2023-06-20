maxhealth = 35
mySize = 1

spr_idle = sprCandyCane
spr_hurt = sprCandyCaneHurt
spr_dead = sprCandyCaneDead

event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))


//snd_hurt = sndHitRock

