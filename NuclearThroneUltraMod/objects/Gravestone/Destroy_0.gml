/// @description Got loot and enemy



// Inherit the parent event
event_inherited();
if GetPlayerLoops() > 0
	scrDrop(16,0);
else
	scrDrop(20,0);
repeat(3)
{
	instance_create(x+random(8)-4,y+random(8)-4,Curse)	
}
with instance_create(x,y,GraveyardSkeleton)
{
	raddrop = 0;
	existTime = 15;
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