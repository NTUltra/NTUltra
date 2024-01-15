event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

image_speed = 0.6

charge=0;

rad=1;

bskin=0;

originnr=0;

ultraD=false
if instance_exists(Player)
{
	if Player.ultra_got[84]
		ultraD=true;
}
canBeMoved = false;
isLaser = false;