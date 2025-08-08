/// @description xxx

// Inherit the parent event
event_inherited();

image_yscale -= 0.3;//5 ticks
alarm[2] = max(1,alarm[2]-1);
dmg = 2 + (GetPlayerLoops()*0.25);