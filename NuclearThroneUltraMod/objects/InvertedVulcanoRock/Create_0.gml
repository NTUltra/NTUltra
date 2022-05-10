maxhealth = 14
size = 1
event_inherited()
var img;
img = choose(1,2,3)

if img = 1{
	shadowYoffset = -1;
spr_idle = sprInvertedVulcanoRock1
spr_hurt = sprInvertedVulcanoRock1Hurt
spr_dead = sprInvertedVulcanoRock1Dead}
if img = 2{
	shadowYoffset = -6;
spr_idle = sprInvertedVulcanoRock2
spr_hurt = sprInvertedVulcanoRock2Hurt
spr_dead = sprInvertedVulcanoRock2Dead}
if img = 3{
	shadowYoffset = -6;
spr_idle = sprInvertedVulcanoRock3
spr_hurt = sprInvertedVulcanoRock3Hurt
spr_dead = sprInvertedVulcanoRock3Dead}


move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

snd_hurt = sndHitRock;
