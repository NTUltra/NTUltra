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
		alarm[2] = 4;
		sprite_index = sprHandClosing;
		image_index = 0;
		snd_play(sndHandThrowGrab);
		with target
		{
			if team != 0
			{
				snd_play(snd_hurt, hurt_pitch_variation,true);
				my_health -= other.dmg*3;
				sprite_index = spr_hurt;
				image_index = 0;
			}
			if size > 2
			{
				other.target = -1;	
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
