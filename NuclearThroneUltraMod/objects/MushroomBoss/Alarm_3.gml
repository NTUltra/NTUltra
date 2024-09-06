/// @description BIG SHIFT
if mode == 0 && instance_exists(Player)
{
	var tx = round(Player.x/32)*32;
	var ty = round(Player.y/32)*32;
	with WallHitMe
	{
		instance_destroy(id,false);
	}
	with Floor
	{
		instance_destroy(id,false);
	}
	with Top
	{
		instance_destroy(id,false);
	}
	with TopSmall
	{
		instance_destroy(id,false);
	}
	with TopDecal
	{
		instance_destroy(id,false);
	}
	with Bones
	{
		instance_destroy(id,false);
	}
	with Corpse
	{
		instance_destroy();	
	}
	with chestprop
	{
		instance_destroy();	
	}
	with Player
	{
		alarm[3] = max(alarm[3],5);
		area = 117;//INV?
	}
	with instance_create(tx,ty,FloorMaker)
	{
		globalGoal = 100;
		goal = 100;
		event_perform(ev_alarm,0);
	}
	with projectile
	{
		instance_destroy(id,false);	
	}
	instance_create(x,y,AreaResetter);
	with hitme
	{
		if point_distance(x,y,Player.x,Player.y) < 128
		{
			with Floor
			{
				if object_index != FloorExplo && point_distance(x + 16,y + 16,Player.x,Player.y) > 128
				{
					other.x = x + 16;
					other.y = y + 16;
					with other
					{
						scrForcePosition60fps();
					}	
				}
			}
		}
	}
	with enemy
	{
		if team != 2
			alarm[1] += 30;//Daze	
	}
	with Floor
	{
		GenBones();	
	}
}
else
{
	event_user(2);	
}