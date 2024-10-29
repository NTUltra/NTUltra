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
}
alarm[2] = 2;