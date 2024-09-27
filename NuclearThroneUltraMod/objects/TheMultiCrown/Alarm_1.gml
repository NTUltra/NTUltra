/// @description Give it a second
if instance_exists(Tutorializer)
{
	alarm[1] = 2;
}
else
{
	with Player
	{
		lockout = false;
	}
	with instance_create(x,y,Portal)
	{
		type = 1
		alarm[1] = 60;
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
	}
	instance_destroy();	
}