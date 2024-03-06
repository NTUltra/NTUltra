/// @description En terug
if !instance_exists(creator)
{
	instance_destroy();
	exit;
}
sprite_index = spr_close;
x = lerp(creator.x,touchpointX,lerpTime);
y = lerp(creator.y,touchpointY,lerpTime);
image_angle = point_direction(creator.x,creator.y,touchpointX,touchpointY);

if touchpointX < x
	image_xscale = -1
else
	image_xscale = 1;
if target != noone && instance_exists(target)
{
	var pd = pushDirection;
	with target
	{
		if other.push
		{
			speed = other.pushSpeed/max(1,(mySize*0.5));
			direction = pd;
			var msk = mask_index;
			mask_index = mskPickupThroughWall;
			x = lerp(other.pushX,other.pushStartX,other.lerpTime);
			y = lerp(other.pushY,other.pushStartY,other.lerpTime);
			mask_index = msk;
			image_xscale += 0.25;
			image_yscale += 0.25;
			var walls = ds_list_create();
			var al = instance_place_list(x,y,Wall,walls,false)
			for (var j = 0; j < al; j++) {
				with walls[| j]
				{
					instance_destroy(id,false);
					instance_create(x,y,FloorExplo);
				}
			}
			image_xscale -= 0.25;
			image_yscale -= 0.25;
			if al > 0
			{
				sprite_index = spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
				image_index = 0
				DealDamage(other.dmg);
				other.target = noone;
				instance_create(x,y,WallBreakWallOnly);
				snd_play(sndImpWristKill);
				BackCont.shake += 6;
				BackCont.viewx2 += lengthdir_x(8,point_direction(other.creator.x,other.creator.y,x,y)+180)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(8,point_direction(other.creator.x,other.creator.y,x,y)+180)*UberCont.opt_shake
				with instance_create(x,y,WallImpact) {
					image_angle = pd + 180;
				}
				repeat(3 + mySize)
					with instance_create(x,y,Dust)
					{
						motion_add(point_direction(x,y,x-other.hspeed,y-other.vspeed) + random_range(30,-30),2+random(3));
					}
			}
			ds_list_destroy(walls);
			scrForcePosition60fps();
		}
		else
		{
			if alarm[11] > 0
				other.target = noone;
			else
			{
				var msk = mask_index;
				mask_index = mskPickupThroughWall;
				speed = 0;
				x = other.x;
				y = other.y;
				mask_index = msk;
				var walls = ds_list_create();
				var al = instance_place_list(x,y,Wall,walls,false)
				for (var j = 0; j < al; j++) {
					with walls[| j]
					{
						instance_destroy(id,false);
						instance_create(x,y,FloorExplo);
					}
				}
				ds_list_destroy(walls);
				if sprite_index == spr_hurt
				{
					image_index += 0.25;
				}
				else if spr_hurt != false
				{
					sprite_index = spr_hurt;
					snd_play(snd_hurt,hurt_pitch_variation,true);
					DealDamage(0.5);
				}
			}
		}
		if my_health <= 0
		{
			other.target = noone;
		}
	}
}
else
{
	lerpCalcBack = lerpCalc;	
}
lerpTime -= lerpCalcBack;
alarm[2] = 1;
if lerpTime < 0 || lerpTime > 1
{
	if target != noone && instance_exists(target) && grabAnItem {
		target.x = creator.x;
		target.y = creator.y;
	}
	instance_destroy();	
}
