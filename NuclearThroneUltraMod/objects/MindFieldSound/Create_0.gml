/// @description Sound
depth = -2;
emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,depth);
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);
audio_play_sound_on(emitter,sndEyesMindFieldLoop,true,2);
ox = x;
oy = y;
tx = x;
ty = y;
time = 0;