event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
dmg = 6.5;//9
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
RecycleGlandType();
hits=5;//30 dmg total
cost = 3;
radCost = 2;
alarm[11] = 1;
bounces = 4;