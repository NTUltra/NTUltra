/// @description xxx



// Inherit the parent event
event_inherited();
if GetPlayerLoops() > 0
	scrDrop(10,0);
else
	scrDrop(15,0);
with instance_create(x,y,InvertedGraveyardSkeleton)
{
	raddrop = 0;
	existTime = 20;
	alarm[1] *= 0.4;
	//insomnia start slower
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 60;
			with instance_create(x,y,Snooze)
			{
				owner = other.id;
				depth = other.depth - 1;
				yoffset = 0;
			}
		}
	}
}