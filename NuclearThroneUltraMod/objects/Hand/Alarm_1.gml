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
	if place_meeting(x,y,target) || lerpTime >= 1
	{
		repeat(3)
			instance_create(x,y,Dust);
			
		touchpointX = x;
		touchpointY = y;
		event_user(0);
		lerpTime = 1;
		if !push
			alarm[2] = 4;
		else
		{
			alarm[2] = 1;
			lerpCalcBack = lerpCalc;
		}
		sprite_index = spr_closing;
		image_index = 0;
		snd_play(sndHandThrowGrab);
		if push
		{
			Sleep(20);
			snd_play(sndExplosion);
			BackCont.viewx2 += lengthdir_x(8,point_direction(creator.x,creator.y,x,y)+180)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(8,point_direction(creator.x,creator.y,x,y)+180)*UberCont.opt_shake
			BackCont.shake += 25;
			pushDirection = point_direction(creator.x,creator.y,target.x,target.y);
			pushStartX = target.x;
			pushStartY = target.y;
			pushX = target.x + lengthdir_x(pushStrength/max(1,target.size*0.5),pushDirection);
			pushY = target.y + lengthdir_y(pushStrength/max(1,target.size*0.5),pushDirection);
		}
		else
		{
			Sleep(10);
			BackCont.viewx2 += lengthdir_x(6,point_direction(creator.x,creator.y,x,y)+180)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(6,point_direction(creator.x,creator.y,x,y)+180)*UberCont.opt_shake
			BackCont.shake += 15;	
		}
		if grabbingPickup
		{
			target = -1;
		}
		else
		{
			with target
			{
				if team != 0 && team != other.team || object_index == IDPDVan || object_index == IDPDVanVertical
				{
					snd_play(snd_hurt, hurt_pitch_variation,true);
					my_health -= other.dmg*2;
					if alarm[1] > 1
						alarm[1] += 10;
					sprite_index = spr_hurt;
					image_index = 0;
				}
				if (size > 2 && !other.push) || size > 3
				{
					other.target = -1;
				}
				if other.push
				{
					direction = other.pushDirection;
					speed = other.pushSpeed/max(1,(size*0.5));
				}
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
	sprite_index = spr_closing;
	image_index = 0;
	alarm[2] = 4;	
	event_user(0);
}

