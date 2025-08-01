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
	with Player
	{
		var hits = ds_list_create();
		var al = collision_circle_list(x,y,31,enemy,false,false,hits,false);
		for (var i = 0; i < al; i ++)
		{
			with hits[| i]
			{
				scrFreezeTarget(10);
			}
		}
		ds_list_clear(hits);
		al = collision_circle_list(x,y,34,projectile,false,false,hits,false)
		for (var i = 0; i < al; i ++)
		{
			with hits[| i]
			{
				if team != 2 && canBeMoved
				{
					x -= hspeed;
					y -= vspeed;
					if speed > 2.25
					{
						speed *= 0.85;
						speed = max(speed - 0.5, 2.5);
					}
				}
			}
		}
		ds_list_destroy(hits);
	}
}
alarm[11] = 5;