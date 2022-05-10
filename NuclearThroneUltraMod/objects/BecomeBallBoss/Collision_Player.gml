/// @description Start wave
if KeyCont.key_pick[other.p] = 1 && canStart && available
{
	KeyCont.key_pick[Player.p] = 2;
	available = false;
	snd_play_2d(sndUltraGrenadeSuck);
	snd_play_2d(sndIntroFadeIn);
	snd_loop(sndSheepLoop);
	instance_create(x,y,Flash)
	alarm[0] = 60;
	alarm[1] = 1;
	Sleep(100);
	BackCont.shake += 40;
	instance_create(x,y,BallBossWave);
}