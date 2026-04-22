/// @description scrStopSong
function scrStopSong(){
	if audio_is_playing(song)
	{
	    audio_stop_sound(song);
	}

	if audio_exists(songStream)
	{
	    audio_destroy_stream(songStream);
	}
}