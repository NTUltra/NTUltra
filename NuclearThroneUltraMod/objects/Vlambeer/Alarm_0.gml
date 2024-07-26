if mode = 2
{
instance_destroy()
room_speed = 30;
with Menu
{
	visible = true;
	alarm[0] = 1;
}
if UberCont.jokeIntro
	snd_play_2d(sndAllyDead)
else
	snd_play_2d(sndRestart)
}
else
{
if UberCont.jokeIntro
	snd_play_2d(sndAllyHurt)
else
	snd_play_2d(sndRestart)
mode = 2
alarm[0] = 20
}
