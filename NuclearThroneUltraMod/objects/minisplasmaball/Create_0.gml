event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
dmg = 3//15
nomscale = 1;
if instance_exists(Player)
{
if Player.skill_got[17] = 1
{
	dmg++
	nomscale += 0.4;
	if Player.betterlaserbrain > 0
		dmg++;
}
}
image_speed = 0.5
resetSpeed=false;

alarm[11] = 1;
alarm[1] = 3;
ptime = 3;
maxspeed = 16;
angleDir = 30;