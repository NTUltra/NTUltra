/// @description COLLECT HP
collected = true;
if !instance_exists(Player)
	exit;
rerolls = 0;
var stoppedVenom = false;
with EnemyVenom
{
	if venomized
	{
		stoppedVenom = true;
		instance_destroy();	
	}
}
if scrIsCrown(32)//Crown of misfortune
{
	if scrIsCrown(5)//Crown of guns
	{
		scrCollectAmmo(ammoValue * 0.5);
	}
	else
	{
		scrCollectAmmo(ammoValue * 1.25);
	}
	if stoppedVenom
	{
		if instance_exists(Player) && Player.skill_got[9]
		{
			if !scrIsCrown(2) || random(2) < 1
				scrCollectHP(1, 0.25);
		}
	}
	else if !scrIsCrown(2) || random(2) < 1
		scrCollectHP(1, 0.25);
}
else
{
	if stoppedVenom
	{
		if instance_exists(Player) && Player.skill_got[9]
			scrCollectHP(ammoValue, 1.125);
	}
	else
		scrCollectHP(ammoValue * 2, 1.125);
}
if isBeingVoided != 1
	instance_destroy()