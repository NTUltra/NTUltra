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
	var n = instance_nearest(x,y,enemy);
	var r = 48;
	if instance_exists(Player) && Player.ultra_got[44]
	{
		r *= 2;	
	}
	if n != noone && instance_exists(n) && n.team != 2 && point_distance(x,y,n.x,n.y) < r
	{
		target = n;		
	}
	else
	{
		instance_destroy();
	}
}

if !window_has_focus()
instance_destroy();
