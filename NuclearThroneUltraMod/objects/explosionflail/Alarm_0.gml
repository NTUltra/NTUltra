/// @description BOOM
var len = 74;
snd_play(sndExplosion);
instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),Explosion);