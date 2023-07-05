/// @description filescroll
scroll += 0.05;
if scroll >= 1
{
	scroll = 1;
	alarm[1] = 10;
}
else
{
	alarm[0] = 1;	
}