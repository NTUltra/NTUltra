if instance_exists(target)
{
	x = target.x
	y = target.y
	visible = target.visible
	image_alpha = target.image_alpha;
	depth = target.depth;
}
else
	instance_destroy()
if instance_exists(Player)
{
	if KeyCont.key_fire[0] == 1
	{
		instance_destroy();
	}
}