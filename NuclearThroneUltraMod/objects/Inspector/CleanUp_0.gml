/// @description Free emitter from memory
if (audio_emitter_exists(emitter))
	audio_emitter_free(emitter);
audio_sound_pitch(mySound,1);