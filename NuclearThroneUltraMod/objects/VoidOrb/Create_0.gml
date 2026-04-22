event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
friction = 0;
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;
typ = 4 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 35;
alarm[11] = 0;
canBeMoved = false;
creator = noone;
alarm[3] = 1;
alarm[2] = 1;
distanceOffset = 24;