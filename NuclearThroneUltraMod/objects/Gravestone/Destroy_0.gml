/// @description Got loot and enemy



// Inherit the parent event
event_inherited();
if GetPlayerLoops() > 0
	scrDrop(14,0);
else
	scrDrop(18,0);
with instance_create(x,y,GraveyardSkeleton)
{
	raddrop = 0;
	existTime = 20;
	alarm[1] *= 0.5;
	//insomnia start slower
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 60;
			scrGiveSnooze();
		}
	}
}