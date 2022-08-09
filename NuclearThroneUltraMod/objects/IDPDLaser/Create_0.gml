/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

image_yscale = 1.25

img = 0
sprStart = sprPopoLaserStart;
sprEnd = sprPopoLaserEnd;
	dmg = 3;
if UberCont.opt_gamemode == 9//Casual mode
	dmg = 2;
if UberCont.opt_gamemode == 34//HARD MODE
	dmg = 4;