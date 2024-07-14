raddrop = 1
maxhealth = 4
mySize = 1

event_inherited()
meleedamage = 2

spr_idle = sprTinyJellyFish
spr_walk = sprTinyJellyFish
spr_hurt = sprTinyJellyFishHurt
spr_dead = sprTinyJellyFishDead
snd_hurt = sndHitFlesh
scrTarget();
explodeOnHitTime = 60;
acc = 0.15;
maxSpeed = 3;
draw = true;
blink = 6;
trailSprite = sprScrapBossMissileTrail;
alarm[1] = 5;
sleeping = true;
image_xscale = choose(1,-1);
right = image_xscale;