/// @description Espolde forwward
audio_stop_sound(snd)

snd_play(sndExplosionL)
var ang = direction;
instance_create(x+lengthdir_x(4,ang),y+lengthdir_y(4,ang),Explosion)
instance_create(x+lengthdir_x(28,ang),y+lengthdir_y(28,ang),Explosion)
scrDrop(75,0,true);








