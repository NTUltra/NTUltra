/// @description COLLECT HP
if !instance_exists(Player)
	exit;
rerolls = 0;
if scrIsCrown(32)//Crown of misfortune
{
	if scrIsCrown(5)//Crown of guns
	{
		scrCollectAmmo(0.5);
	}
	else
	{
		scrCollectAmmo(1);
	}
}
var stoppedVenom = false;
with EnemyVenom
{
	if venomized
	{
		stoppedVenom = true;
		instance_destroy();	
	}
}
if stoppedVenom
{
	if instance_exists(Player) && Player.skill_got[9]
		scrCollectHP(1);
}
else
	scrCollectHP(2);
instance_destroy()