/// @description Init
if instance_exists(Player)
if Player.skill_got[3]
	{
		alarm[2] = 2;	
	}
	isGettingSucked = false;
	
cursed = false;
mySize = 1;
stepDis = 12;
if UberCont.normalGameSpeed == 60
	stepDis = 6;