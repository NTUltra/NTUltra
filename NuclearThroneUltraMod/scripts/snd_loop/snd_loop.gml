function snd_loop(mySound) {
	audio_stop_sound(mySound);
	return audio_play_sound(mySound,3,true);
}
