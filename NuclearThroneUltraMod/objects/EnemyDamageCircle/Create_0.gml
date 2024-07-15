/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
event_inherited();
typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
canBeMoved = true;
dmg = 3;
if scrIsGamemode(9)//Casual mode
	dmg = 2;
if scrIsHardMode()//HARD MODE
	dmg = 4;

radius = 0;
maxRange = 128;
width = 0.1;
maxWidth = 6;
damageColour = make_colour_rgb(235,0,67);
colour = make_colour_rgb(237,132,118)
alarm[0] = 1;
alarm[3] = 10;
canDamage = false;