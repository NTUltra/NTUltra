maxhealth = 9;
mySize = 1
loops = GetPlayerLoops();
if loops > 0
	maxhealth = 15;


event_inherited()
scrInitDrops(1);
var img;
img = choose(1,2,3)
shadowSprite = shd16;
if img = 1{
	shadowYoffset = -1;
spr_idle = sprGravestone1
spr_hurt = sprGravestone1Hurt
spr_dead = sprGravestone1Dead}
if img = 2{
	shadowYoffset = -1;
spr_idle = sprGravestone2
spr_hurt = sprGravestone2Hurt
spr_dead = sprGravestone2Dead}
if img = 3{
	shadowYoffset = -1;
spr_idle = sprGravestone3
spr_hurt = sprGravestone3Hurt
spr_dead = sprGravestone3Dead}
move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

snd_hurt = sndHitRock;
