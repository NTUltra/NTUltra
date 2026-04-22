/// @description scrStopAmbience
function scrStopAmbience(){
	if audio_is_playing(amb)
	{
	    audio_stop_sound(amb);
	}

	if audio_exists(ambStream)
	{
	    audio_destroy_stream(ambStream);
	}
}