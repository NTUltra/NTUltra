/// @description Heen
if !instance_exists(creator)
{
	instance_destroy();
	exit;
}
if target > 0 && instance_exists(target)
{
	x = lerp(creator.x,target.x,lerpTime);
	y = lerp(creator.y,target.y,lerpTime);
	if target.x < x
		image_yscale = -1
	else
		image_yscale = 1;
	lerpTime += lerpCalc;
	image_angle = point_direction(x,y,target.x,target.y);
	if place_meeting(x,y,target)
	{
		touchpointX = x;
		touchpointY = y;
		lerpTime = 1;
		debug("lerpTime",lerpTime);
		if !push
			alarm[2] = 4;
		else
		{
			alarm[2] = 1;
			lerpCalcBack = lerpCalc;
		}
		sprite_index = sprHandClosing;
		image_index = 0;
		snd_play(sndHandThrowGrab);
		if push
		{
			pushDirection = point_direction(creator.x,creator.y,target.x,target.y);
			pushStartX = target.x;
			pushStartY = target.y;
			pushX = target.x + lengthdir_x(pushStrength/max(1,target.size),pushDirection);
			pushY = target.y + lengthdir_y(pushStrength/max(1,target.size),pushDirection);
		}
		with target
		{
			if team != 0
			{
				snd_play(snd_hurt, hurt_pitch_variation,true);
				my_health -= other.dmg*3;
				if alarm[1] > 1
					alarm[1] += 5;
				sprite_index = spr_hurt;
				image_index = 0;
			}
			if size > 2
			{
				other.target = -1;
			}
			if other.push
			{
				direction = other.pushDirection;
				speed = 12/max(1,size);
			}
		}
	}
	else
	{
		alarm[1] = 1;	
	}
}
else
{
	touchpointX = x;
	touchpointY = y;
	lerpTime = 1;
	lerpCalcBack = lerpCalc;
	sprite_index = sprHandClosing;
	image_index = 0;
	alarm[2] = 4;	
}

debug("aalerpTime",lerpTime);
