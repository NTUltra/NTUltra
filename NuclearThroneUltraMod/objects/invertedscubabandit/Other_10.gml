/// @description Fire
ammo = maxAmmo;
alarm[2] = 5;
alarm[1] += 10;
snd_play(sndFiretrap);
wkick = 4
gunangle = point_direction(x, y, target.x, target.y)
walk += 5;
direction = gunangle+choose(100,-100);
speed = 0.2;
audio_play_sound_on(emitter,sndSnowBlowerLoop,true,4);
instance_create(x-5,y,Notice);
instance_create(x,y,Notice);
instance_create(x+5,y,Notice);