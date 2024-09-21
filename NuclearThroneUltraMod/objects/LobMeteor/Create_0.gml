/// @description Xscale

// Inherit the parent event
event_inherited();
image_speed = 0.4;
growRate = 0.07;
image_xscale = choose(1,-1);
alarm[9] = 0;
alarm[3] = 0;
rotationSpeed *= 2;
heightScale = 128;
emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,depth);
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);
audio_play_sound_on(emitter,sndFlameCannonLoop,true,1)