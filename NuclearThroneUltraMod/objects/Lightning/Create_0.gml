event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects
hasStunned = false;
accuracy=18;
branch = 20;
imageSpeed = 0.4
target = noone;
dmg = 10;
image_speed = 0;
iframeskip = 0.075;
fork = 6;
bloom = 0;
ammo = 0;
defaultYscale = 1;
isog = true;
canUltraMod = true;
canBeMoved = false;
isLaser = false;
UberCont.recursionCheck ++;
lightningList = [];