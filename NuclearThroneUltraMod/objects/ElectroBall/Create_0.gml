event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
//friction=0.4;
dmg = 5;
damageDelay = 15;
dmgReduction = 0;
target=noone;
hitEntities = [];
if instance_exists(Player)
{
	if Player.skill_got[17]
	{
		dmg += 1;
	}
}
originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
direction=originalDirection;
image_speed = 0.5

sprInactive = sprElectroBall;
sprActive = sprElectroBallActive;
resetSpeed=false;
alarm[1]=1;
alarm[0]=1;
electroDelay = 8;
alarm[11] = 1;