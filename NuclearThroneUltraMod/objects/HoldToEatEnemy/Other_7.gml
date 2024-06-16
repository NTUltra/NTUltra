/// @description EAT
with target
{
	my_health = 0;
	scrBasicRobotEat(x,y,0, false);
	with instance_create(x,y,RobotEat)
	{
		image_xscale = other.right
	}
}
instance_destroy();
