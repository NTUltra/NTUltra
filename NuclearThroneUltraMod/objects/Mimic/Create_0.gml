raddrop = 6
maxhealth = 4
mySize = 0

event_inherited()
meleedamage = 3

friction = 0.4;
spr_idle = sprMimicIdle
spr_walk = sprMimicFire
spr_hurt = sprMimicHurt
spr_dead = sprMimicDead


//behavior
alarm[1] = 90+random(150)

if place_free(x,y-12)
move_contact_solid(90,12)

