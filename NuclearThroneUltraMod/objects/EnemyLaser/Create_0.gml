/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_yscale = 1.25
canBeMoved = false;
img = 0
laserDecrease = 0.2;
dmg = 3;
if instance_exists(Player) && Player.skill_got[12]
{
	laserDecrease = 0.3;
}
if UberCont.opt_gamemode == 34//HARD MODE
	dmg = 4;
//dir=0;
