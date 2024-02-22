/// @description Spreading fire
if instance_exists(Player) && Player.moodSwing
{
	if instance_exists(enemy)
	{
		var n = instance_nearest(x,y,enemy);
		if n != noone && point_distance(x,y,n.x,n.y) < 96 && !collision_line(x,y,n.x,n.y,Wall,false,false)
		{
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
}






