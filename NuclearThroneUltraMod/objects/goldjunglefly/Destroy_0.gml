/// @description Gassbomb

// Inherit the parent event
event_inherited();
if object_index == GoldJungleFly
{
	instance_create(x,y,MaggotExplosion);
	instance_create(x,y,MaggotExplosion);
	scrDrop(40,10);
	instance_create(x,y,BigWallBreak);
	var ang = random(360);
	var am = 10;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{motion_add(ang,2+random(2))
		team = other.team
		}
		ang += angStep;
	}
}