/// @description Coool sigzag
x += lengthdir_x(sin(time)*offset,direction+angle);
y += lengthdir_y(sin(time)*offset,direction+angle);
time += tdir;
alarm[5] = 1;
scrForcePosition60fps();