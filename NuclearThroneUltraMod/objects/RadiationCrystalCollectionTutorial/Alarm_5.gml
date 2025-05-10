/// @description END
instance_destroy();
with MutationChoiceReward
{
	instance_create(x,y,PortalChecker);
	with CorpseCollector
	{
		px = other.x;
		py = other.y;
	}
	with instance_create(x,y,Portal)
	{
		type = 1
		alarm[1] = 75;
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
	}
}
with Player
{
	lockout = false;	
}