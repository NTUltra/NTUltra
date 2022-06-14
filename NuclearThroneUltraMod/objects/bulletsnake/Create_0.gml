event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
RecycleGlandType();
norecycle=choose(false,false,false,true);
dmg = 2;
alarm[11] = 0;
cost = 1;

offset = 6;
angle = 90;
time = 1;
tdir = 0.85;
alarm[2] = 3;