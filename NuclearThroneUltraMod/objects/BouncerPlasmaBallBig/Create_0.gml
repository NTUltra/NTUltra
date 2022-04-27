event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable

dmg = 18
nomscale = 1;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
	dmg = 23+(Player.betterlaserbrain*2)
	nomscale += 0.1;
	}
}
//friction=0.4;
image_speed = 0.5
Sleep(10)
originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
resetSpeed=false;
alarm[1] = 90;
