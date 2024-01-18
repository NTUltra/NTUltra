/// @description Get fucked kid
var yy = 52;
snd_play(sndNothingBeamLoop);
var scale = 0.5;
if instance_exists(Player) && Player.skill_got[12] == 1
{
	scale = 0.4;
}
var t1 = instance_create(x, y+yy,SmallThroneBeam);
ds_list_add(myLasers,t1);
if isInverted
{
	with t1
	{
		image_xscale = scale;
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = 1
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
		
	}
	var t2 = instance_create(x, y+yy,SmallThroneBeam);
	ds_list_add(myLasers,t2);
	with t2
	{
		image_xscale = scale;
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = -1
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
		
	}
}
else
	with t1
	{
		depth = other.depth - 1;
		image_xscale = scale;
		team = other.team;
	}
alarm[5] = 15;
