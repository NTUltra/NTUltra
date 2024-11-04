/// @description START BEAM
if instance_exists(ThroneBeam)
	exit;
alarm[6] = 70;//Beam duration
snd_play_2d(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
vspeed = 0;
beamY = y;
if isInverted
{
	with instance_create(x,y+20,ThroneBeam)
	{
		if other.foreverBeam
		{
			angleRate *= 1.5;
			angleMax *= 1.5;
		}
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = 1
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
	}
	with instance_create(x,y+20,ThroneBeam)
	{
		if other.foreverBeam
		{
			angleRate *= 1.5;
			angleMax *= 1.5;
		}
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
{
	with instance_create(x,y+20,ThroneBeam)
	{
		depth = other.depth - 1;
		team = other.team;
	}
}
