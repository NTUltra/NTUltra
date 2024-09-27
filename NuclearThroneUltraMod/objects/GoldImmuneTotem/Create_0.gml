/// @description Init

// Inherit the parent event
event_inherited();
spr_idle = sprGoldImmuneTotem
spr_walk = sprGoldImmuneTotem
spr_hurt = sprGoldImmuneTotemHurt
spr_dead = sprGoldImmuneTotemDead

myGuys = ds_list_create();
healths = ds_list_create();
shieldX = ds_list_create();
shieldY = ds_list_create();
shieldRadius = ds_list_create();
actTime = 30;
cooldown = 3;
cooldownTimer = cooldown;
range = 96;
lineCol = make_colour_rgb(255,25,143);
circleCol = make_colour_rgb(0,255,255);