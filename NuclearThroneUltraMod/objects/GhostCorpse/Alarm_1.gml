/// @description Before halting motion
myAnim = instance_create(x,y,AnimDestroyTop);
with instance_create(x,y,GhostEffect)
{
	motion_add(random(360),1 + random(2));
}
if explosionSize == 2
	with myAnim
	{
		sprite_index = sprGhostAboutToExplodeMedium;
	}
else
	with myAnim
	{
		sprite_index = sprGhostAboutToExplodeSmall;
	}