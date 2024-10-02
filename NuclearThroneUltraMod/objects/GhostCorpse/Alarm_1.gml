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
		image_speed = 0.45;
	}
else
	with myAnim
	{
		sprite_index = sprGhostAboutToExplodeSmall;
		image_speed = 0.45;
	}