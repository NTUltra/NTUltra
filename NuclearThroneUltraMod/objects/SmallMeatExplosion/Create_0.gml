/// @description Lower damagesilsighlty quicker fade
event_inherited();
alarm[2] = 0;
dmg = max(1,dmg-2);
image_speed += 0.05;