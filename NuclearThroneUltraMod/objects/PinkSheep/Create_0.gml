/// @description xxx

// Inherit the parent event
raddrop = 0;
event_inherited();
spr_idle = sprMutant13BIdle
spr_walk = sprMutant13BWalk
spr_hurt = sprMutant13BHurt
spr_dead = sprMutant13BDead

snd_hurt = sndSheep;
sprite_index = spr_hurt;
alarm[3] = 30;//Stay alive
maxhealth = 50;
my_health = maxhealth;
name = "BRING SHEEP HOME?";
