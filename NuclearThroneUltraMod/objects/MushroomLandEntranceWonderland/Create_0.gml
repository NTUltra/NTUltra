/// @description Change sprites

// Inherit the parent event
event_inherited();

spr_idle = sprWrongMushroom
spr_hurt = sprWrongMushroomHurt
spr_dead = sprWrongMushroomDead
snd_hurt = sndHitPlant
alarm[0]=400 * clamp(loops*2,1,4)//335//10 seconds 300
