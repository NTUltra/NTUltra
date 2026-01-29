/// @description scrStopAmbience
function scrStopAmbience(){
	if audio_exists(amb) && audio_is_playing(amb) && amb != -1
	{
		try {
			audio_stop_sound(amb);
			//audio_destroy_stream(amb);
		}
		catch (e) {}
		amb = -1;
	}
}