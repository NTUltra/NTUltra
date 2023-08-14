/// @description Also explode

// Inherit the parent event
event_inherited();
snd_play(sndExplosion);
var xx = x + lengthdir_x(40,image_angle);
var yy = y + lengthdir_y(40,image_angle);
instance_create(xx,yy,Explosion);