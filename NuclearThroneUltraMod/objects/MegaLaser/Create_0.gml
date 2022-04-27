event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

image_yscale = 4
dmg=2;
if instance_exists(Player)
{
if Player.skill_got[17] = 1{
image_yscale = 5.5+(Player.betterlaserbrain*0.5)
dmg=2.3
}
}

img = -0.5;
aimed=false;
Direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
isUltra = false;
isog = true;
canBeMoved = false;
