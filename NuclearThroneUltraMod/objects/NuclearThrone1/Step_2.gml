/// @description Move



hspeed = 0;
x = xStart;
/*
if UberCont.normalGameSpeed == 60
	vspeed *= 0.2;
else
	vspeed *= 0.1;
*/
if walk <= 0 && speed > 1
{
	speed = 1;
}
if instance_exists(ThroneBeam) && !isInverted
{
	y = beamY;
}
if (intro && image_speed > 0)
{
	//Bullets can set image_index to 0 canceling our beautifull intro
	prevImageIndex += image_speed
	image_index = prevImageIndex;
}
else if active
{
	var highestDmg = 0;
	var sideThatHurt = noone;
	var hitIsAlreadyDead = false;
	with NuclearThrone1Side {
		if tookDamageThisFrame > highestDmg
		{
			highestDmg = tookDamageThisFrame;
			sideThatHurt = id;
		}
		tookDamageThisFrame = 0;
	}
	if sideThatHurt != noone
	{
		//Confirm damage to part
		with sideThatHurt
		{
			my_health -= highestDmg;
			prevhealth = my_health;
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
			if disable
				hitIsAlreadyDead = true;
			image_index = 0;
			sprite_index = spr_hurt;
		}
	}
	if highestDmg > 0
	{
		my_health -= highestDmg
		// prevhealth = my_health;//Don't recognize this as dmg
		if hitIsAlreadyDead
			spr_hurt = spr_middle_hurt;
		else if disable
			spr_hurt = spr_middle_deactivated_hurt_link;
		else
			spr_hurt = spr_middle_hurt_link;
		sprite_index = spr_hurt;
		image_index = 0;
		if sideThatHurt == leftSide
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
	with NuclearThrone1Side {
		tookDamageThisFrame = 0;
	}
	if (my_health < prevhealth)
	{
		if sideThatHurt != rightSide
		with rightSide
		{
			if disable
				spr_hurt = spr_right_deactivated_hurt_link;
			else
				spr_hurt = spr_right_hurt_link;
			sprite_index = spr_hurt;
			image_index = 0;
		}
		if sideThatHurt != leftSide
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
// Inherit the parent event
event_inherited();
if immune || intro
{
	speed = 0;
}
