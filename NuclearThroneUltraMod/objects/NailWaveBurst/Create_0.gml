/// @description

// Inherit the parent event
event_inherited();
cycles = 1;
maxAmmo = 0;
projectileSpeed = 14;
myNails = ds_list_create();
xPrev = UberCont.mouse__x;
yPrev = UberCont.mouse__y;
aimPrevious = point_direction(x,y,xPrev,yPrev);
aimX = xPrev;
aimY = yPrev;