/// @description So much damage

// Inherit the parent event
event_inherited();
image_speed = 0.4;
dmg = 80;
alarm[4] = 2;
emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,depth);
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);
audio_play_sound_on(emitter,sndOldHeavyPowerCrossbowLoop,true,1)
owner = noone;