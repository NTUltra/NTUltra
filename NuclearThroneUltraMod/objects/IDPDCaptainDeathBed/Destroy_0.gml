/// @description BOSS KILL
scrBossKill();
// Inherit the parent event
event_inherited();
with myCorpse
{
	speed = 0;
	depth = other.depth;
}
with LastCampfire
{
	if false && !scrIsGamemode(10)
		with instance_create_depth(x,y - 4,depth - 2,GameEnd)
		{
			endingType = 1;	
		}
}