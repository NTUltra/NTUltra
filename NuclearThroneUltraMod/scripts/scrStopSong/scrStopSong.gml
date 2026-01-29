/// @description scrStopSong
function scrStopSong(){
	if audio_exists(song) && audio_is_playing(song) && song != -1
	{
		try {
			audio_stop_sound(song);
			//audio_destroy_stream(song);
		}
		catch (e) {}
		song = -1;
	}
}