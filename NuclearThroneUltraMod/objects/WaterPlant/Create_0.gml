maxhealth = 2
mySize = 1

var img;
img = choose(1,2)


if img = 1{
spr_idle = sprWaterPlant
spr_hurt = sprWaterPlantHurt
spr_dead = sprWaterPlantDead}
if img = 2{
spr_idle = sprWaterPlant2
spr_hurt = sprWaterPlant2Hurt
spr_dead = sprWaterPlant2Dead}


event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

