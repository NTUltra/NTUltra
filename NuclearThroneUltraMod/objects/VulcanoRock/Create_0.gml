maxhealth = 16
size = 1



event_inherited()

var img;
img = choose(1,2,3)

if img = 1{
	shadowYoffset = -1;
spr_idle = sprVulcanoRock1
spr_hurt = sprVulcanoRock1Hurt
spr_dead = sprVulcanoRock1Dead}
if img = 2{
	shadowYoffset = -8;
spr_idle = sprVulcanoRock2
spr_hurt = sprVulcanoRock2Hurt
spr_dead = sprVulcanoRock2Dead}
if img = 3{
	shadowYoffset = -6;
spr_idle = sprVulcanoRock3
spr_hurt = sprVulcanoRock3Hurt
spr_dead = sprVulcanoRock3Dead}
move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

snd_hurt = sndHitRock;
