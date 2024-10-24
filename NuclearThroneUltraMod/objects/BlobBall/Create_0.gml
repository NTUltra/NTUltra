event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
inkSprite = sprInkBlobSplat;
friction = 0.1;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
team = 2;
image_speed=0.4;
image_angle=random(360);
xScale = 1;
yScale = 1;
dmg = 13;
dmgAdd = 6;
blobSpeed = 2;
time = 0;
timeScale = 0.1;
rotation = random_range(20,40) * choose(1,-1);
xPrev = x;
yPrev = y;
alarm[0] = 1;
alarm[1] = 60;
alarm[2] = 1;
blobFx = 5;
alarm[3] = 1;
alarm[4] = 1 + 1;
alarm[5] = 1 + 2;
blobTrail = 1;
alarm[6] = blobTrail;
mySound = snd_play(sndBlobTrailSmall,
0,false,true,2,false,false,0.8,true,id);