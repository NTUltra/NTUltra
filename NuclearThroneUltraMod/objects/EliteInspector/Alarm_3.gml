/// @description Push Projectiles
alarm[3] = 2;
if control
{
	var str = 3;
	if UberCont.normalGameSpeed == 60
		str *= 0.5;
	var projs = ds_list_create();
	var al = collision_circle_list(x,y,128,projectile,false,false,projs,false)
	var t = team;
	var px = x;
	var py = y;
	for (var i = 0; i < al; i++)
	{
		with projs[| i] {
			if team != t
			{
				var pd = point_direction(x,y,px,py);
				if !place_meeting(x+lengthdir_x(str,pd),y,Wall)
					x += lengthdir_x(str,pd)
				if !place_meeting(x,y+lengthdir_y(str,pd),Wall)
					y += lengthdir_y(str,pd)
			}
		}
	}
}






