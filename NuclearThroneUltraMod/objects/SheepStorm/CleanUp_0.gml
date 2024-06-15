audio_stop_sound(sndSheepLoopUpg);
audio_stop_sound(sndSheepLoop);

if instance_exists(Player){
	with Player
	{
		image_speed = 0.4;
		if skill_got[2]==1//extra feet
		{
			maxSpeed=4.5;
		}
		else
		{
			maxSpeed=4;
		}
	}
}