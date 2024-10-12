/// @description BIG RUNAWAY
if mode == 0 && instance_exists(Player)
{
	didTheThing += 1;
	if !reachedHalfHealth && my_health < maxhealth*0.6
	{
		reachedHalfHealth = true;
	}
	scrDrop(100,0);
	var f = instance_furthest(x,y,Floor)
	if f != noone
	{
		var ang = random(360);
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,2.5);
				image_angle = direction
				team = other.team
			}
			ang += 60;	
		}
		ang += 30;
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,3.5);
				image_angle = direction
				team = other.team
			}
			ang += 30;
		}
		var o = 16;
		if f.object_index == FloorExplo
			o = 8;
		x = f.x + o;
		y = f.y + o;
		scrForcePosition60fps();
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,2.5);
				image_angle = direction
				team = other.team
			}
			ang += 60;	
		}
		ang += 30;
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(ang,3.5);
				image_angle = direction
				team = other.team
			}
			ang += 30;
		}
		snd_play_2d(sndMushroomAreaShift);
		BackCont.shake += 50;
		instance_create(x,y,WallBreakWallOnlyBigCircle);
		alarm[1] += actTime;
		if Player.x < x
			right = -1;
		else
			right = 1;
		mask_index = mskBigMushroom;
	}
}
else
{
	event_user(2);	
}