/// @description intro step 2 first beam
with MusCont
{
	song = musBoss4A	
	snd_loop(song);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
}
sprite_index = spr_activate;
spr_idle = spr_activate;
spr_hurt = spr_activate;
my_health = maxhealth;
//mask_index = mskNothingActive;
image_index = 1;
imageIndex = 1;
with instance_create(x,y,ThronePipes)
{
	if other.isInverted
		sprite_index = sprInvertedNothingPipes;
	// depth = other.depth + 3;
}
alarm[2] = 90;
beamY = y;
existTime = 10;
repeat(8)
{
	with instance_create(x+random_range(32,-32),y,Debris)
	{
		vspeed = random_range(8,16);
		hspeed = random_range(-6,6);
	}
}
snd_play_2d(sndNothingStart);
snd_play_2d(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
if isInverted
{
	with instance_create(x,y+20,ThroneBeam)
	{
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = 1;
		sprBeam = sprInvertedNothingBeam;
		sprBeamHit = sprInvertedNothingBeamHit;
		sprite_index = sprInvertedNothingBeamStretch;
	}
	with instance_create(x,y+20,ThroneBeam)
	{
		depth = other.depth - 1;
		team = other.team;
		alarm[1] = 1;
		angleDir = -1;
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
