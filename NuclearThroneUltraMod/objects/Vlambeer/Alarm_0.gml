if mode = 2
{
instance_destroy()
room_speed = UberCont.normalGameSpeed;
if instance_exists(MenuGen)
{
	//FUCK INTROS LETS FUCKING GO MADDER FUCKER I WANNA FUCKING PLAY GO GO GO AINT NOBODY GOT TIME FOR THIS FUCKING LOGO SHIT
	if alarm[1] > 0
		room_speed = 9999;
}
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
