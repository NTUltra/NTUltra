/// @description More fucking
var yy = 52;
var xx = 16;
snd_play(sndNothingBeamStart);
var scale = 0.3;
if instance_exists(Player) && Player.skill_got[12] == 1
{
	xx -= 4;
	scale = 0.2;
}
var t1 = instance_create(x + xx, y+yy,SmallThroneBeam)
ds_list_add(myLasers,t1);
if isInverted
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
else
	with t1
	{
		depth = other.depth - 1;
		image_xscale = scale;
		team = other.team;
	}
var t2 = instance_create(x - xx, y+yy,SmallThroneBeam)
ds_list_add(myLasers,t2);
if isInverted
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
else
	with t2
	{
		depth = other.depth - 1;
		image_xscale = scale;
		team = other.team;
	}

alarm[6] = 30;

