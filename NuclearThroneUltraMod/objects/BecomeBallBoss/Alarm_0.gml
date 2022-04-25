/// @description It is time
with BallBossWave
{
	event_user(2);
}
with Statue
{
	image_speed = 0.4;	
}
if audio_is_playing(sndSheepLoop)
	audio_stop_sound(sndSheepLoop);
