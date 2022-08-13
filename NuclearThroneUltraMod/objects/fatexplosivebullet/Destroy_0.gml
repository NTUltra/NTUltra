/// @description Explosion

// Inherit the parent event
event_inherited();

instance_create(x+lengthdir_x(12,image_angle),y+lengthdir_y(12,image_angle),Explosion);
snd_play(sndExplosion)