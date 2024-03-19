event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
friction = 0.1;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
team = 2;
image_speed=0.4;
image_angle=random(360);
xScale = 1;
yScale = 1;
dmg = 30;
dmgAdd = 10;
time = 0;
timeScale = 0.1;
rotation = random_range(25,35) * choose(1,-1);
xPrev = x;
yPrev = y;
alarm[0] = 1;
alarm[1] = 90;
alarm[2] = 1;
blobFx = 6;
alarm[3] = 1;
alarm[4] = 1 + 2;
alarm[5] = 1 + 4;
blobTrail = 1;
alarm[6] = blobTrail;
mySound = snd_play(sndBlobTrail,
0,false,true,2,false,false,0.8,true,id);