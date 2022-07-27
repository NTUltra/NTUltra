maxhealth = 2
size = 1

var img;
img = choose(1,2)


if img = 1{
spr_idle = sprInvertedWaterPlant
spr_hurt = sprInvertedWaterPlantHurt
spr_dead = sprInvertedWaterPlantDead}
if img = 2{
spr_idle = sprInvertedWaterPlant2
spr_hurt = sprInvertedWaterPlant2Hurt
spr_dead = sprInvertedWaterPlant2Dead}


event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

