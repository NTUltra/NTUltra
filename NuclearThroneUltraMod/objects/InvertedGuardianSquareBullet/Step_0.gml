/// @description Zig Zag
if UberCont.normalGameSpeed == 60
	time += tdir * 0.5;
else
	time += tdir;
x += lengthdir_x(sin(time)*offset,direction+angle);
y += lengthdir_y(sin(time)*offset,direction+angle);