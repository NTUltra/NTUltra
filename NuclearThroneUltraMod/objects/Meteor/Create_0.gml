event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
friction = 0.01;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_speed=0.4;
alarm[0]=4;
image_angle=random(360);
maxTime = 80;
airTime = 10;
upTime = (maxTime * 0.5) - (airTime * 0.5) - 5;
alarm[1] = upTime//Go up
downTime = upTime + 5;
snd_loop(sndDragonLoop);
dy = y;
topY = ystart - 200;
minScale = 0.75;
scale = minScale;
maxScale = 1.5;
depth = -12;
meteorAngle = 45;