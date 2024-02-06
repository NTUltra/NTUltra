event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
dmg = 4.5;//9
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
RecycleGlandType();
hits = 3;//15 dmg total
alarm[11] = 1;
cost = 2;
radCost = 0;
xprev = x;
yprev = y;

if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{dmg += 1;}}