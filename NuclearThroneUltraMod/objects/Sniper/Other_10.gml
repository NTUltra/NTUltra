/// @description Gonna fire
snd_play(sndSniperTarget)
walk = 0
alarm[1] = tellTime+actTime+10;
alarm[2] = tellTime;
gonnafire = 1;
if loops < 3
with Sniper
{
	if alarm[1] < 30
		alarm[1] += 3;
}