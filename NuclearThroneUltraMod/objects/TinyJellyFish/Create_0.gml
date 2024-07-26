raddrop = 1
maxhealth = 2
mySize = 1

event_inherited()
meleedamage = 3

spr_idle = sprTinyJellyFish
spr_walk = sprTinyJellyFish
spr_hurt = sprTinyJellyFishHurt
spr_dead = sprTinyJellyFishDead
snd_hurt = sndHitFlesh
scrTarget();
acc = 0.12;
maxSpeed = 2.6;
draw = true;
blink = 6;
trailSprite = sprScrapBossMissileTrail;
alarm[1] = 15;
sleeping = true;
image_xscale = choose(1,-1);
right = image_xscale;
esplode = false;