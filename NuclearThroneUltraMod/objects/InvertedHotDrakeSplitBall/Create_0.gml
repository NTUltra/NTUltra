event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_speed=0.4;
alarm[0]=4;
image_angle=random(360);
alarm[1]=55;
snd_loop(sndDragonLoop);
dmg = 16;
inverted = false;
scrInitDrops(1);