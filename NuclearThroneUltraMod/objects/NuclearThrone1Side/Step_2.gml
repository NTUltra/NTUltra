/// @description Transfer damage to main body

// Inherit the parent event

hspeed = 0;
vspeed *= 0.1;

if (my_health < prevhealth)
{
	//Damage needs to be confirmed
	tookDamageThisFrame = prevhealth - my_health;
	my_health = prevhealth;
}

if owner > -1 && instance_exists(owner)// && (version != 2 || !disable)
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

