/// @description scrStopAmbience
function scrStopAmbience(){
    audio_destroy_stream(amb);
    audio_stop_sound(amb);
}