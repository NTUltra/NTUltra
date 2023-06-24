/// @description Gonna fire
snd_play(sndSniperTarget)
walk = 0
alarm[1] = tellTime+actTime+10;
alarm[2] = tellTime;
gonnafire = 1;
with Sniper
	alarm[1] += 2;