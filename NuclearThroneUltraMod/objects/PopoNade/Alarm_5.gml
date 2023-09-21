/// @description Radius decrease
r -= 6;
if r <= 16
{
	r = 0;
	alarm[4] = 2;
}
else
	alarm[5] = 1;
