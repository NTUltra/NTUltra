event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
dmg = 7
nomscale = 1;
if instance_exists(Player)
{
if Player.skill_got[17] = 1
{
	nomscale += 0.2;
dmg = 9+(Player.betterlaserbrain)
}
}
originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
direction=originalDirection;
image_speed = 0.5
Sleep(3)
resetSpeed=false;

alarm[11] = 1;
maxspeed = 7;