maxhealth = 4
mySize = 1
spr_idle = sprBonePile1
spr_hurt = sprBonePile1Hurt
spr_dead = sprBonePile1Dead

event_inherited()

alarm[1] = 5;

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

