event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
image_speed=0.4;
alarm[0]=4;
image_angle=random(360);
dmg = 3;

alarm[1]=160;
emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,depth);
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);
audio_play_sound_on(emitter,sndFlameCannonLoop,true,1)