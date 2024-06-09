/// @description Debris
alarm[7] = 1;
if instance_exists(Player)
{
	repeat(3)
	{
		var xx = camera_get_view_x(view_camera[0]) + random(camera_get_view_width(view_camera[0]));
		with instance_create(xx,camera_get_view_y(view_camera[0]),TopDebris)
		{
			hspeed = random_range(4,-4);
			vspeed = random_range(2,6);
			if Player.area == 4
				sprite_index = sprDebris4;
			else if Player.area == 111
				sprite_index = sprDebris111;
			else if Player.area == 138
				sprite_index = sprDebris138;
		}
	}
}