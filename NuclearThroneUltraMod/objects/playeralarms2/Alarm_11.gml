/// @description Freeze enemy flames Elementor Frost ultra
if instance_exists(Player)
{
	with TrapFire {
		var s = 200/point_distance(x,y,Player.x,Player.y);
		var ss = s * 0.0003;
		friction += ss;
		image_speed += ss;
		image_xscale = max(0.1,image_xscale - 0.15 - ss);
		image_yscale = image_xscale;
		motion_add(point_direction(x,y,Player.x,Player.y)+180,min(speed,s));//move away from wall
	}
}
alarm[11] = 5;