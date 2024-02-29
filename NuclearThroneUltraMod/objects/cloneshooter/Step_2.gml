/// @description Stay at mouse
speed = 0;
if instance_exists(Player)
{
	if hitscanMode {
		if (alarm[0] > 2)
		{
			if !instance_exists(Marker)
			{
				with UberCont {
					mouse__x = mouse_x;
					mouse__y = mouse_y;
				}
			}
			theAim = point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y) + offset
			x = Player.x;
			y = Player.y;
			while (collision_point(x,y,Player,false,false)) {
				x += lengthdir_x(1,theAim);
				y += lengthdir_y(1,theAim);	
			}
			var n = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy)
			if n != noone && point_distance(UberCont.mouse__x,UberCont.mouse__y,n.x,n.y) < 38 + (skill_got[19]*14) && !collision_line(x,y,n.x,n.y,Wall,false,false)
				theAim = point_direction(x,y,n.x,n.y) + offset
			var hit1 = collision_line_point(x,y,x + lengthdir_x(500,theAim),y + lengthdir_y(500,theAim),hitme,false,false);
			var hit2 = collision_line_point(x,y,x + lengthdir_x(500,theAim),y + lengthdir_y(500,theAim),Wall,false,false);
			var d1 = point_distance(x,y,hit1[1],hit1[2]);
			var d2 = point_distance(x,y,hit2[1],hit2[2]);
			var bo = 38;
			if d1 < d2 {
				if d1 < bo
					bo = d1;
				x = hit1[1] - lengthdir_x(bo,theAim);
				y = hit1[2] - lengthdir_y(bo,theAim);
			} else {
				if d2 < bo
					bo = d2;
				x = hit2[1] - lengthdir_x(bo,theAim);
				y = hit2[2] - lengthdir_y(bo,theAim);
			}
			UberCont.mouse__x = x + lengthdir_x(bo,theAim);
			UberCont.mouse__y = y + lengthdir_y(bo,theAim);
			var playerIsBursting = false;
			with BurstWeapons
			{
				if 	team == Player.team
					playerIsBursting = true;
			}
			with ChargeWeapons
			{
				if 	team == Player.team
					playerIsBursting = true;
			}
			if !playerIsBursting {
				alarm[0] = 2;
			}
			scrForcePosition60fps();
		}
	}
	else
	{
		theAim = point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y);
		x = UberCont.mouse__x + lengthdir_x(2,theAim+180);
		y = UberCont.mouse__y + lengthdir_y(2,theAim+180);
	}
}
else 
	instance_destroy();