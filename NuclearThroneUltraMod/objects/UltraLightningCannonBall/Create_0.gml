/// @description Init

// Inherit the parent event
event_inherited();
image_speed = 0.4;
typ = 2;
alarm[0] = 1;
dmg = 7;
friction = 0.12;
alarm[1] = 150
if instance_exists(Player) && Player.skill_got[17] = 1
	friction -= 0.05;
emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,depth);
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);
audio_play_sound_on(emitter,sndLightningCannonLoop,true,1)

angle = choose(31,-31);