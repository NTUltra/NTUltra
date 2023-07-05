/// @description filescroll
scroll -= 0.01;
if scroll <= 0
{
	scroll = 0;
	alarm[0] = 10;
}
else
{
	alarm[1] = 1;	
}