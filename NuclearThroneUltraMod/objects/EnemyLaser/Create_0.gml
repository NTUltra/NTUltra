/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
event_inherited(); 
typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_yscale = 1.25
canBeMoved = false;
isLaser = true;
img = 0
laserDecrease = 0.2;
sprStart = sprEnemyLaserStart;
sprEnd = sprEnemyLaserEnd;
maxDistance = 160;
alarm[2] = 3;
alarm[3] = 2;
if instance_exists(Player) && Player.skill_got[12]
{
	alarm[2] = 1;
	laserDecrease = 0.25;
	maxDistance *= 0.75;
}
	dmg = 3;
if scrIsGamemode(9)//Casual mode
	dmg = 2;
if scrIsHardMode()//HARD MODE
{
	dmg = 4;
	alarm[2] += 1;
}
//dir=0;