/// @description scrStopSong
function scrStopSong(){
    audio_destroy_stream(song);
    audio_stop_sound(song);
}