event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflects

image_speed = 0.4
image_yscale = 2;
charge=0;

rad=1;

bskin=0;

originnr=0;

ultraD=false
accuracyBoost = 1;
if instance_exists(Player)
{
	if Player.ultra_got[84]
		ultraD=true
	if Player.skill_got[19]
		accuracyBoost = 0.25;
	if Player.skill_got[17]
	{
		image_yscale = 3;
		image_speed = 0.35;
	}
}
canBeMoved = false;
isLaser = false;