/// @description Small Explosions
alarm[2] = 4;
var dir = random(360);
var dis = random(96);
var xx = x + lengthdir_x(dis,dir);
var yy = y + lengthdir_y(dis,dir);
instance_create(xx,yy,SmallExplosion);
snd_play(sndExplosionS);
