/// @description Spreading fire
var sw = sprite_width * 0.5;
var sh = sprite_height * 0.5;
var maxi = sprite_width + sprite_height;
repeat(4)
{
	var burning = false;
	if instance_exists(enemy)
	{
		var n = instance_nearest(x + random_range(sw,-sw),y + random_range(sh,-sh),enemy);
		if n != noone && point_distance(x,y,n.x,n.y) < maxi && !collision_line(x,y,n.x,n.y,Wall,false,false)
		{
			burning = true;
			var d = point_direction(x,y,n.x,n.y)
			var len = point_distance(x,y,n.x,n.y);
			var xx = x + lengthdir_x(len * 0.6,d);
			var yy = y + lengthdir_y(len * 0.6,d);
			var xxx = x + lengthdir_x(len * 0.3,d);
			var yyy = y + lengthdir_y(len * 0.3,d);
			with instance_create(xx,yy,MoodFlame)
			{
				team = 2;
				motion_add(d,2);
			}
			with instance_create(xxx,yyy,Smoke)
			{
				motion_add(d,1);	
			}
		}
	}
	if !burning
	{
		var ang = random(360);
		with instance_create(x + lengthdir_x(sw,ang),y + lengthdir_y(sh,ang),MoodFlame) {
			motion_add(ang,3);
		}
	}
}