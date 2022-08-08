event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
dmg = 7
nomscale = 1;
maxSpeed = 5.5;

if instance_exists(Player)
{
if Player.skill_got[17] = 1
{
	dmg = 8+(Player.betterlaserbrain)
	nomscale += 0.4;
}
	if Player.crown == 24//Crown of sloth
		maxSpeed -= 1.5;
}
originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
direction=originalDirection;
image_speed = 0.5
Sleep(3)
resetSpeed=false;

alarm[11] = 1;
turned = false;
alarm[1] = 2;