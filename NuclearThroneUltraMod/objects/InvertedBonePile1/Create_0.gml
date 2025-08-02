maxhealth = 4
mySize = 1
spr_idle = sprInvertedBonePile1
spr_hurt = sprInvertedBonePile1Hurt
spr_dead = sprInvertedBonePile1Dead

event_inherited()

alarm[1] = 5;

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

