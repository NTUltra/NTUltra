event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_speed=0.4;
angle=random(360);

team = 2;
alarm[0]=8;
alarm[1]=140;
alarm[2] = 8;
alarm[3] = 8;
dmg = 15;
mySound = snd_play(sndToxicGasLoop,
0,false,true,2,false,false,0.8,true,id);