maxhealth = 6
mySize = 1
if GetPlayerLoops > 0
	maxhealth = 12;


event_inherited()
scrInitDrops(1);
var img;
img = choose(1,2,3)
shadowSprite = shd16;
if img = 1{
	shadowYoffset = -1;
spr_idle = sprInvertedGravestone1
spr_hurt = sprInvertedGravestone1Hurt
spr_dead = sprInvertedGravestone1Dead}
if img = 2{
	shadowYoffset = -1;
spr_idle = sprInvertedGravestone2
spr_hurt = sprInvertedGravestone2Hurt
spr_dead = sprInvertedGravestone2Dead}
if img = 3{
	shadowYoffset = -1;
spr_idle = sprInvertedGravestone3
spr_hurt = sprInvertedGravestone3Hurt
spr_dead = sprInvertedGravestone3Dead}
move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

snd_hurt = sndHitRock;
