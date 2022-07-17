/// @description Transfer damage to main body

// Inherit the parent event

hspeed = 0;
vspeed *= 0.1;

if (my_health < prevhealth)
{
	if tookDamageThisFrame
	{
		my_health = prevhealth;
	}
	else
	{
		tookDamageThisFrame = true;
		var dmgTaken = prevhealth - my_health;
		if sprite_index == spr_hurt
		{
			if (isLeft)
			{
				if disable
					spr_hurt = spr_left_deactivated_hurt;
				else
					spr_hurt = spr_left_hurt;
			}
			else
			{
				if disable
					spr_hurt = spr_right_deactivated_hurt;
				else
					spr_hurt = spr_right_hurt;
			}
			//Use correct sprite index
			sprite_index = spr_hurt;
		}
		with owner
		{
			my_health = prevhealth;
			my_health -= dmgTaken;
			prevhealth = my_health;//Don't recognize this as dmg
			sprite_index = spr_middle_hurt_link;
			if disable
				spr_hurt = spr_middle_deactivated_hurt_link;
			else
				spr_hurt = spr_middle_hurt_link;
			image_index = 0;
			if other.id == leftSide
			{
				with rightSide
				{
					if disable
						spr_hurt = spr_right_deactivated_hurt_link;
					else
						spr_hurt = spr_right_hurt_link;
					sprite_index = spr_hurt;
					image_index = 0;
				}
			}
			else
			{
				with leftSide
				{
					if disable
						spr_hurt = spr_left_deactivated_hurt_link;
					else
						spr_hurt = spr_left_hurt_link;
					sprite_index = spr_hurt;
					image_index = 0;
				}	
			}
		}
	}
}
//Ignore collision when moving
var msk = mask_index;
mask_index = mskPickupThroughWall;
if owner > -1 && instance_exists(owner)
{
	x = owner.x + xOffset;
	y = owner.y + yOffset;
	if owner.walk > 0
	{
		walk += 0.9;
		if walk > sprite_get_number(sprNothingLeg)
		{
			walk = 0;
			snd_play_2d(sndNothingFootstep);
		}
	}
}
mask_index = msk;

event_inherited();

