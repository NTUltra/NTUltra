/// @description Second sound
var xx = x;
var yy = y;
xx = x + lengthdir_x(32,homeDirection);
yy = y + lengthdir_y(32,homeDirection);
snd_play(sndMissileLand,0.01);
x = xx;
y = yy;