/// @description Position and end
if speed < 0.2
	instance_destroy();
if (audio_emitter_exists(emitter))
	audio_emitter_position(emitter,x,y,depth);