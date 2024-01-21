event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 3;
scale = 0.25;
image_speed = 0.4;
image_xscale = scale;
image_yscale = scale;
depth = -1
radius = 12;
opacity = 1;