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

if owner > -1 && instance_exists(owner)
{
	//Apply tangle to base
	if place_meeting(x,y,Tangle)
	{
		with owner
		{
			if !place_meeting(x,y,Tangle)
			{
				var s = 0.07 + clamp(mySize*0.01,0,0.07);
				x = xprevious+hspeed*s;
				y = yprevious+vspeed*s;
			}
		}
	}
	//Ignore collision when moving
	var msk = mask_index;
	mask_index = mskPickupThroughWall;
	x = owner.x + xOffset;
	y = owner.y + yOffset;
	if owner.walk > 0
	{
		if walkAnim > sprite_get_number(sprNothingLeg)
		{
			walkAnim = 0;
			snd_play(sndNothingFootstep);
		}
		if UberCont.normalGameSpeed == 60
		{
			walkAnim += 0.45;
		}
		else
			walkAnim += 0.9;
		
	}
	mask_index = msk;
}

event_inherited();

