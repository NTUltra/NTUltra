
event_inherited()
if object_index == Raven
{
	scrDrop(16,0)
	if fps_real >= fps
		repeat(3+irandom(6))
		{
			instance_create(x,y,RavenFeather);
		}
}