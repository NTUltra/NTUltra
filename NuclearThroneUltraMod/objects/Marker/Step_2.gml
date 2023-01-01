if instance_exists(enemy)
{
	if(target != -1 && instance_exists(target) && target.my_health > 0)
	{
		var tx = target.x// + (target.hspeed*2);
		var ty = target.y// + (target.vspeed*2);
		x = tx;
		y = ty;
	}
	else
	{
		if target.object_index == Thief
		{
			scrUnlockGameMode(12,"FOR KILLING A THIEF#WHILE IT IS MARKED")	
		}
		instance_destroy();
	}
}
else
{
	instance_destroy();
}

if !window_has_focus()
instance_destroy();



with projectile
{
	if team != 2
		exit;
	if !instance_exists(Player)
	    {exit;}
	if !instance_exists(Marker)
	    {exit;}
	if !canBeMoved{exit;}
	if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )  and object_index != EnemyLaser
	{if place_free(x+lengthdir_x(0.4,point_direction(x,y,Marker.x,Marker.y)),y)
	x += lengthdir_x(0.4,point_direction(x,y,Marker.x,Marker.y))
	if place_free(x,y+lengthdir_y(0.4,point_direction(x,y,Marker.x,Marker.y)))
	y += lengthdir_y(0.4,point_direction(x,y,Marker.x,Marker.y))}
	image_angle=direction;

	if (direction<point_direction(x,y,Marker.x,Marker.y) )
            {
            direction+=1;
            image_angle+=1;
            }
            else if (direction>point_direction(x,y,Marker.x,Marker.y) )
            {
            direction-=1;
            image_angle-=1;
            }
}

