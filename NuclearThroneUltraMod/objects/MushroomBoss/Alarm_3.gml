/// @description BIG SHIFT
if mode == 0 && instance_exists(Player)
{
	with PortalEnviromentReplacer
	{
		instance_destroy();	
	}
	didTheThing += 1;
	if !reachedHalfHealth && my_health < maxhealth*0.6
	{
		reachedHalfHealth = true;
	}
	scrDrop(100,0);
	snd_play_2d(sndMushroomAreaShift);
	var tx = round(Player.x/32)*32;
	var ty = round(Player.y/32)*32;
	with FX
	{
		instance_destroy(id,false);	
	}
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
		scrTeleportToFloor();
	}
	with enemy
	{
		if team != 2 && id != other.id
		{
			var msk = mask_index;
			var d = point_direction(x,y,endX,endY);
			var l = 128 + random(500);
			x += lengthdir_x(l,d);
			y += lengthdir_y(l,d);
			scrTeleportToFloor();
			mask_index = msk;
		}
	}
	/*
	with instance_place(x,y,BecomeMushroomBoss)
	{
		var msk = mask_index;
		while place_meeting(x,y,other.id)
		{
			x += choose(300,-300);
			y += choose(300,-300);
		}
		scrTeleportToFloor();
		mask_index = msk;
	}*/
	alarm[6] = 1;
	with instance_furthest(x,y,BecomeMushroomBoss)
	{
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		x = other.xprevious;
		y = other.yprevious;
		scrForcePosition60fps();
		mask_index = msk;
		instance_create(x,y,WallBreakWallOnlyBigCircle);
	}
	with prop
	{
		instance_destroy(id,false);
	}
	with Floor
	{
		GenBones();
		TopDecals();
	}
	with Bones
	{
		depth = y*-1;
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
	mask_index = mskBigMushroom;
}
else
{
	event_user(2);	
}