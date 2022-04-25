/// @description Start wave
if KeyCont.key_pick[other.p] = 1 && canStart
{
	KeyCont.key_pick[Player.p] = 2;
	available = false;
	snd_play_2d(sndUltraGrenadeSuck);
	snd_play_2d(sndIntroFadeIn);
	snd_loop(sndSheepLoop);
	instance_create(x,y,Flash)
	alarm[0] = 30;
	alarm[1] = 1;
	Sleep(100);
	BackCont.shake += 40;
	instance_create(x,y,BallBossWave);
}