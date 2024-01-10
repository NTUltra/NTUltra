/// @description Start beam
snd_play(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
with instance_create(x,y+54,Throne2Beam)
{
	depth = other.depth - 1;
	team = other.team;
}
alarm[8] = 15+min(5,loops);

