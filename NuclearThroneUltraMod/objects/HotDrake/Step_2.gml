if alarm[4]>0
{sprite_index=spr_vanish}
if alarm[6]>0
{sprite_index=spr_appear}
event_inherited();
if x > xstart + 64
	hspeed = min(hspeed,0);