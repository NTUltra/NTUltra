event_inherited()

repeat(3+irandom(6))
{
	with instance_create(x,y,RavenFeather)
		image_index = 7;
}

repeat(1+irandom(2))
{
	with instance_create(x,y,RavenFeather)
		image_index = 8
}