/// @description EAT
with target
{
	if canBeEaten
		my_health = 0;
	scrBasicRobotEat(x,y,0, false);
	with instance_create(x,y,RobotEat)
	{
		image_xscale = other.right
	}
	if object_index == BigGenerator
	{
		instance_destroy();	
	}
}
instance_destroy();
