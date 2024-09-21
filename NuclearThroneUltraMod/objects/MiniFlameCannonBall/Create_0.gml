/// @description xxx

// Inherit the parent event
event_inherited();

emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,depth);
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);
alarm[6] = 1;
exploSound = sndFlareExplode;