/// @description Explosions
alarm[1] = 6;
snd_play(sndExplosion);
var dir = random(360);
var dis = random(96);
var xx = x + lengthdir_x(dis,dir);
var yy = y + lengthdir_y(dis,dir);
instance_create(xx,yy,Explosion);