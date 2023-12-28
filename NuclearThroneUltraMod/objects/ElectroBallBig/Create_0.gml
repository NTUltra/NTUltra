event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */


originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
direction=originalDirection;
image_speed = 0.5

sprInactive = sprElectroBallBig;
sprActive = sprElectroBallBigActive;
alarm[1]=1;
alarm[0]=1;
alarm[2] = 4;
alarm[11] = 0;
balls = 8;