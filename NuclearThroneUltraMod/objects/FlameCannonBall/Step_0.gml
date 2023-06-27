/// @description position audio
if speed<=0.23
instance_destroy();
if (audio_emitter_exists(emitter))
	audio_emitter_position(emitter,x,y,depth);