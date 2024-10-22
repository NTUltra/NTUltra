/// @description absolute obliteration

// Inherit the parent event
event_inherited();
target = noone;
dmg = 60;
image_speed = 0.6;
alarm[4] = 1;
with instance_create(x,y,DarkOverlay)
{
	alarm[0] = 20;
}
alarm[5] = 10;
alarm[6] = 2;
knockback = 20;
snd_play(sndVoidSuck);