/// @description It is time
with BallBossWave
{
	event_user(2);
}
with Statue
{
	image_index = 0;
	image_speed = 0.2;
}
if audio_is_playing(sndSheepLoop)
	audio_stop_sound(sndSheepLoop);
