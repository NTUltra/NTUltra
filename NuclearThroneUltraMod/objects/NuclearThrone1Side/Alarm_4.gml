/// @description Get fucked kid
var yy = 52;
var t1 = instance_create(x, y+yy,SmallThroneBeam);
ds_list_add(myLasers,t1);
if isInverted
	with t1
	{
		image_xscale = 0.5;
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
		image_xscale = 0.5;
		team = other.team;
	}
alarm[5] = 15;
