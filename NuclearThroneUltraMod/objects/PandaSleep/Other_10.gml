/// @description sleepHits
sleepHits += 1;
if sleepHits > 5
{
	sleepHits = 0;
	with Player
	{
		BackCont.shake += 5;
		scrHeal(1);
		snd_play_2d(sndPandaSleepHeal,0.05);
		instance_create(x,y,HealFX);
	}
}