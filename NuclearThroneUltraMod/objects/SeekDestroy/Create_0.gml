event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
image_speed = 0.4;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 40;
image_speed = 0.5
friction = 0;
alarm[1] = 1;
damageTickRate = 4;
hitEntities = [];
alarm[2] = damageTickRate;
alarm[4] = 400;
fireRotation = 0;
trailScale = 6;
trailShrink = 0.1;
trailColour = c_black;
xprev = xstart;
yprev = ystart;
xPrev = UberCont.mouse__x;
yPrev = UberCont.mouse__y;
followRate = 0.5;
aimPrevious = point_direction(x,y,xPrev,yPrev);