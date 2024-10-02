/// @description Give me a boss
if ((instance_exists(Player) && Player.area == 140) || 
(instance_exists(BackCont) && BackCont.area == 140) || 
(instance_exists(UberCont) && UberCont.area == 140))
{
	with instance_create(x,y,BecomeCloudBoss)
	{
		sprite_index = sprInvertedCloudBoss);
	}
}
else
	instance_create(x,y,BecomeCloudBoss);