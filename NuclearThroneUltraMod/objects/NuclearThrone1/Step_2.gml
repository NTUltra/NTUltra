/// @description Move

// Inherit the parent event
event_inherited();

hspeed = 0;
x = xStart;
vspeed *= 0.1;
if walk <= 0 && speed > 1
	speed = 1;
if instance_exists(ThroneBeam)
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
	if (my_health < prevhealth)
	{
		var dmgTaken = prevhealth - my_health;
		//Damage reduction on middle part
		if cantrishot
			my_health += dmgTaken * 0.5;
		if sprite_index == spr_hurt
		{
			if disable
				spr_hurt = spr_deactivated_hurt;
			else
				spr_hurt = spr_middle_hurt;
			sprite_index = spr_hurt;
		}
		with rightSide
		{
			if disable
				spr_hurt = spr_right_deactivated_hurt_link;
			else
				spr_hurt = spr_right_hurt_link;
			sprite_index = spr_hurt;
			image_index = 0;
		}
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