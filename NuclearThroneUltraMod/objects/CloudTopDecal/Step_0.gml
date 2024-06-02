/// @description Slow movement
x = xstart + (cos(time) * 32);
y = ystart + (sin(time) * 32);

if UberCont.normalGameSpeed == 60
{
	time += moveSpeed * 0.5;
}
else
{
	time += moveSpeed
}