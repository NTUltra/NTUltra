maxhealth = 7
mySize = 1
spr_idle = sprInvertedBonePile2
spr_hurt = sprInvertedBonePile2Hurt
spr_dead = sprInvertedBonePile2Dead

event_inherited()

alarm[1] = 5;

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

