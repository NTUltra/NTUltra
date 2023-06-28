/// @description Radius decrease
r --;
if r <= 0
{
	r = 0;
	alarm[4] = 15;
}
else
	alarm[5] = 1;
