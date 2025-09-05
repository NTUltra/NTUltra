/// @description Home
if instance_exists(Player) && instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy)
	if n != noone
	{
		var dir=point_direction(x,y,n.x,n.y)
		motion_add(dir,0.06);///0.05
		if Player.race=23 && Player.skill_got[5]=1
		{
			speed = max(0.5,speed);
			motion_add(dir,0.11);
		}
	}
	if avoidPlayer
	{
		var dis = point_distance(x,y,Player.x,Player.y);
		if dis < 48
		{
			var d = point_direction(Player.x,Player.y,x,y);
			if dis < 32
			{
				direction = d;
				speed = max(speed,2);
			}
			if speed < 1
			{
				direction = d;	
			}
			motion_add(d,0.5);
			speed = max(1,speed);
		}
		else if dis < 128
			motion_add(point_direction(Player.x,Player.y,x,y),0.1);
	}
}
alarm[2] = 2;