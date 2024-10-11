/// @description BIG SHIFT
if mode == 0 && instance_exists(Player)
{
	snd_play_2d(sndMushroomAreaShift);
	var tx = round(Player.x/32)*32;
	var ty = round(Player.y/32)*32;
	with TrapScorchMark
	{
		instance_destroy();	
	}
	with WeaponMod
	{
		instance_destroy(id,false);	
	}
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
	with ChestOpen
	{
		instance_destroy();	
	}
	with Friend
	{
		alarm[4] = 1;
	}
	with Traps
	{
		instance_destroy(id,false);	
	}
	with projectile
	{
		instance_destroy(id,false);	
	}
	with Player
	{
		alarm[3] = max(alarm[3],15);
		area = 117;//INV?
		if other.isInverted
			area = 124
	}
	var fm = instance_create(tx,ty,FloorMaker)
	var endX = x;
	var endY = y;
	with fm
	{
		globalGoal = 100;
		goal = 100;
		event_perform(ev_alarm,0);
		endX = x + 16;
		endY = y + 16;
	}
	instance_create(x,y,AreaResetter);
	with CorpseCollector
	{
		surface_free(surf);
		ds_list_clear(corpses);
		disappearTime = 5;
		visible = true;
		alarm[1] = 0;
		alarm[2] = 0;
	}
	with BGFXLayer
	{
		surface_free(surf);
		ds_list_clear(drawer);
		alarm[2] = 0;
	}
	with Pickup
	{
		if !collision_point(x,y,Floor,false,false)
			instance_destroy(id,false);
	}
	with WepPickup
	{
		var n = instance_nearest(x,y,Floor);
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
			{
				o = 8;
			}
			x = n.x + o;
			y = n.y + o;
			scrForcePosition60fps();
		}
		//if visible
		//	alarm[2] = 2;
	}
	with enemy
	{
		if id != other.id
		{
			if team != 2
			{
				alarm[1] += 30;
				speed = 0;
				walk = 0;
			}
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
			else
			{
				var n = instance_nearest(x,y,Floor);
				if n != noone
				{
					x = n.x + 16;
					y = n.y + 16;
					scrForcePosition60fps();
				}
			}
		}
	}
	with prop
	{
		var n = instance_nearest(x,y,Floor);
		if n != noone
		{
			x = n.x + 16;
			y = n.y + 16;
			scrForcePosition60fps();
		}	
	}
	with Floor
	{
		GenBones();	
	}
	BackCont.shake += 100;
	x = endX;
	y = endY;
	scrForcePosition60fps();
	instance_create(x,y,WallBreakWallOnlyBigCircle);
	alarm[1] += actTime*2;
	if Player.x < x
		right = -1;
	else
		right = 1;
}
else
{
	event_user(2);	
}