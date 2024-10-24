event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
team = 2;
image_speed=0.4;
image_angle=random(360);
xScale = 1;
yScale = 1;
time = 0;
timeScale = 0.05;
rotation = random_range(10,20) * choose(1,-1);
xPrev = x;
yPrev = y;
dmg = 3;
oScale = 1;
inkSplat = sprInkBlobSplat;
alarm[0] = 1;
alarm[1] = 70;
alarm[2] = 2;
if !instance_exists(BlobDrawer)
	instance_create(x,y,BlobDrawer);