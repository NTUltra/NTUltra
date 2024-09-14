scrDrop(24,0)

event_inherited()

repeat(3)
{
	with instance_create(x,y,GhostEffect)
	{
		motion_add(random(360),1 + random(2));
	}
}