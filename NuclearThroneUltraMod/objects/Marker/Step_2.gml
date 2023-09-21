if instance_exists(target)
{
	if(target.my_health > 0)
	{
		var tx = target.x// + (target.hspeed*2);
		var ty = target.y// + (target.vspeed*2);
		x = tx;
		y = ty;
	}
}
else
{
	instance_destroy();
}

if !window_has_focus()
instance_destroy();
