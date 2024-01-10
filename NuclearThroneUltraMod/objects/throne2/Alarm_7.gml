/// @description Start beam
snd_play(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
if isInverted
{
	with instance_create(x,y+54,Throne2Beam)
	{
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = 1
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
	}
	with instance_create(x,y+54,Throne2Beam)
	{
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
	with instance_create(x,y+54,Throne2Beam)
	{
		depth = other.depth - 1;
		team = other.team;
	}
}
alarm[8] = 15+min(5,loops);

