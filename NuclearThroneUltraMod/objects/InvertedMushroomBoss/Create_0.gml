raddrop = 60;
maxhealth = 1000
mySize = 3
event_inherited();
immuneToTypeDamage = 0;
isInverted = true;
spr_idle_earth = sprInvertedBigMushroomEarthIdle;
spr_walk_earth = sprInvertedBigMushroomEarthIdle;
spr_hurt_earth = sprInvertedBigMushroomEarthHurt;
spr_dead_earth = sprInvertedBigMushroomEarthDead;
spr_fire_earth = sprInvertedBigMushroomEarthAttack;
spr_to_toxic = sprInvertedBigMushroomShiftToToxic;
spr_grow = sprInvertedBigMushroomGrow;

spr_idle_toxic = sprInvertedBigMushroomToxicIdle;
spr_walk_toxic = sprInvertedBigMushroomToxicIdle;
spr_hurt_toxic = sprInvertedBigMushroomToxicHurt;
spr_dead_toxic = sprInvertedBigMushroomToxicDead;
spr_fire_toxic = sprInvertedBigMushroomToxicAttack;
spr_to_earth = sprInvertedBigMushroomShiftToEarth;
spr_shrink = sprInvertedBigMushroomShrink;


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
actTime -= 5;
buddyAmount = 4;