if image_index == 1 and selected = 0 && hasNoMenuOpen()
{
	snd_play_2d(sndClick);
	with instance_create(x,y,Credits)
	{
		type = 3;
		persistent = true;
	}
	room_goto(romCredits);
	
	/*
selected = 1
with option2
instance_destroy();
with option
instance_destroy();
*/
}
else
alarm[0] = 2;