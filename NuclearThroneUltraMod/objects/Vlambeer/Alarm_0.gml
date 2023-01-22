if mode = 2
{
instance_destroy()
room_speed = 30;
with Menu
{
	visible = true;
	alarm[0] = 1;
}
snd_play(sndRestart)
}
else
{
snd_play(sndRestart)
mode = 2
alarm[0] = 20
}
