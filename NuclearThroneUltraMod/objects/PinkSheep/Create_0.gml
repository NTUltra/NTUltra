/// @description Init

// Inherit the parent event
raddrop = 0;
event_inherited();
spr_idle = sprPinkSheepIdle
spr_idle_b = sprPinkSheepIdle
spr_walk = sprPinkSheepWalk
spr_hurt = sprPinkSheepHurt
spr_dead = sprPinkSheepDead

snd_hurt = sndSheep;
sprite_index = spr_hurt;
alarm[3] = 30;//Stay alive
maxhealth = 50;
my_health = maxhealth;
name = "BRING SHEEP HOME?";