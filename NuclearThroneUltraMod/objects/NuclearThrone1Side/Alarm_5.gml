/// @description More fucking
var yy = 52;
var xx = 16;
if instance_exists(Player) && Player.skill_got[12] == 1
{
	xx -= 4;
}
var t1 = instance_create(x + xx, y+yy,SmallThroneBeam)
ds_list_add(myLasers,t1);
if isInverted
	with t2
	{
		image_xscale = 0.3;
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = 1
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
		
	}
else
	with t1
	{
		depth = other.depth - 1;
		image_xscale = 0.3;
		team = other.team;
	}
var t2 = instance_create(x - xx, y+yy,SmallThroneBeam)
ds_list_add(myLasers,t2);
if isInverted
	with t2
	{
		image_xscale = 0.3;
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = 1
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
		
	}
else
	with t2
	{
		depth = other.depth - 1;
		image_xscale = 0.3;
		team = other.team;
	}

alarm[6] = 30;

if instance_exists(Player) && Player.skill_got[12] == 1
{
	with SmallThroneBeam
	{
		image_xscale -= 0.1;	
	}
}