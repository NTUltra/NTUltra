/// @description TP and Ball attack
if forceAnimation && forceAnimationSprite == spr_warp_out
{
	scrTarget();
	if target != noone && instance_exists(target)
	{
		var dis = 0;
		var len = 96;
		var mindis = 64;
		var tries = 900;
		var msk = mask_index;
		while dis < mindis && tries > 0 && !place_meeting(x,y,Wall)
		{
			var rand = random(360);
			with instance_nearest(
				target.x + lengthdir_x(len,rand),
				target.y + lengthdir_y(len,rand),
				Floor)
			{
				var o = 16;
				if object_index == FloorExplo
					o = 8;
				other.mask_index = mskPickupThroughWall;
				other.x = x + o;
				other.y = y + o;
				other.mask_index = msk;
			}
			len += 16;
			dis = point_distance(target.x,target.y,x,y);
			tries -= 1;
		}
		if tries < 1
		{
			x = xprevious;
			y = yprevious;
		}
		scrForcePosition60fps();
		gunangle = point_direction(x,y,target.x,target.y);
		alarm[7] = 2;//retarget
		if target.x > x
			right = 1
	    else
			right = -1
	}
	forceAnimationSprite = spr_warp_in;
	forceAnimationIndex = 0;
	forceAnimationEnd = sprite_get_number(spr_warp_in);
	
}
else if forceAnimation && forceAnimationSprite == spr_warp_in
{
	snd_play(snd_tp_shoot);
	with instance_create(x,y,BigIdpdCaptainBullet)
	{	
		team = other.team;
		motion_add(other.gunangle,5);
		x += lengthdir_x(8, direction);
		y += lengthdir_y(8, direction);
		image_angle = direction;
	}
	forceAnimation = false;
	alarm[1] = actTime + random(actTime);
}
else
{
	forceAnimation = true;
	forceAnimationSprite = spr_warp_out;
	forceAnimationIndex = 0;
	forceAnimationEnd = sprite_get_number(spr_warp_out);
	snd_play(snd_tp);
}