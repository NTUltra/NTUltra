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
scrCollectHP(2);
instance_destroy()