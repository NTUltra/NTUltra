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
				if alarm[11] < 1 && my_health > 0 {//this probably doesnt work cause iit takes the health off after this collision detection
					frozen = true;
					with instance_create(x,y,FrozenEnemy)
					{
						var s = min(2,other.mySize)
						image_xscale=s*choose(1,-1);
						image_yscale=s;
						xx=other.x
						yy=other.y
						owner = other.id;
					}
					alarm[11] += 30;
					if alarm[1] > 0
						alarm[1] += 5;
				}
			}
		}
		ds_list_clear(hits);
		al = collision_circle_list(x,y,32,projectile,false,false,hits,false)
		for (var i = 0; i < al; i ++)
		{
			with hits[| i]
			{
				if team != 2 && canBeMoved
				{
					x -= hspeed;
					y -= vspeed;
					if speed > 2
					{
						speed *= 0.8;
						speed = max(speed - 1, 2);
					}
				}
			}
		}
		ds_list_destroy(hits);
	}
}
alarm[11] = 5;