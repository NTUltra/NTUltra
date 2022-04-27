if instance_exists(enemy)
{
	if(instance_exists(target))
	{
		var tx = target.x + (target.hspeed*2);
		var ty = target.y + (target.vspeed*2);
		x = tx;
		y = ty;
		debug("position it");
		/*
		if instance_exists(Player)
		{
			if Player.ultra_got[44] == 0
			{
				/*
				with BackCont{
					viewdist-=4;
				}*/
				/*
				var mox,moy;
				var len,dir;
				var ox = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5);
				var oy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.5);
				len=point_distance(ox,oy,tx,ty)
				len*=(window_get_height())*0.004//*0.0038;

				dir=point_direction(ox,oy,tx,ty);

				mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
				moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);

				if mox > window_get_x()+window_get_width()
				mox = window_get_x()+window_get_width()-8;
				if mox < window_get_x()
				mox = window_get_x()+8;
				if moy > window_get_y()+window_get_height()
				moy = window_get_y()+window_get_height()-8;
				if moy < window_get_y()
				moy = window_get_y()+8;

				//display_mouse_set(mox,moy);

			}
		}
*/
	}
	else
	{
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
	if !ProjectileCanBeMoved(){exit;}
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

