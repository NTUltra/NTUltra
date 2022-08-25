scrDrop(22,2)

event_inherited()
if object_index == Vulture
{
	repeat(3+irandom(6))
	{
		with instance_create(x,y,RavenFeather)
			image_index = 5;
	}

	repeat(1+irandom(2))
	{
		with instance_create(x,y,RavenFeather)
			image_index = 6
	}
}