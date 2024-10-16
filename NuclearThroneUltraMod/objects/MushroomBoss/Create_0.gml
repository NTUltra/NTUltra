raddrop = 60;
maxhealth = 1000
mySize = 3
event_inherited();
sndtaunt = 0;
tauntdelay = 0;
scrAddDrops(5);
meleedamage = 0
immuneToTypeDamage = 1;
isInverted = false;
spr_idle_earth = sprBigMushroomEarthIdle;
spr_walk_earth = sprBigMushroomEarthIdle;
spr_hurt_earth = sprBigMushroomEarthHurt;
spr_dead_earth = sprBigMushroomEarthDead;
spr_fire_earth = sprBigMushroomEarthAttack;
spr_to_toxic = sprBigMushroomShiftToToxic;
spr_grow = sprBigMushroomGrow;

spr_idle_toxic = sprBigMushroomToxicIdle;
spr_walk_toxic = sprBigMushroomToxicIdle;
spr_hurt_toxic = sprBigMushroomToxicHurt;
spr_dead_toxic = sprBigMushroomToxicDead;
spr_fire_toxic = sprBigMushroomToxicAttack;
spr_to_earth = sprBigMushroomShiftToEarth;
spr_shrink = sprBigMushroomShrink;

reachedHalfHealth = false;

snd_hurt = sndBigMushroomBossHurt
snd_dead = sndBigMushroomBossDead

//behavior
mode = 0;//EARTH / TOXIC
walk = 0
gunangle = random(360)
alarm[1] = 40;
wkick = 0
actTime = 20;
maxSpeed = 0;

spr_idle = spr_idle_earth;
spr_walk = spr_walk_earth;
spr_hurt = spr_hurt_earth;
spr_dead = spr_dead_earth;
spr_fire = spr_fire_earth;
spr_shrink = spr_shrink
forceAnimation = spr_idle;
animationDuration = sprite_get_number(forceAnimation);
forceImageIndex = 0;
buddyAmount = 3;
didTheThing = 0;