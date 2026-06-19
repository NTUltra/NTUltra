raddrop = 1
maxhealth = 1
mySize = 1

event_inherited()
meleedamage = 4

spr_idle = sprTinyJellyFish
spr_walk = sprTinyJellyFish
spr_hurt = sprTinyJellyFishHurt
spr_dead = sprTinyJellyFishDead
snd_hurt = sndHitFlesh
scrTarget();
acc = 0.14;
maxSpeed = 2.7;
draw = true;
blink = 6;
trailSprite = sprScrapBossMissileTrail;
alarm[1] = 12;
sleeping = true;
image_xscale = choose(1,-1);
right = image_xscale;
esplode = false;
loops = GetPlayerLoops();
isEsploding = false;
esplodeTime = 10;