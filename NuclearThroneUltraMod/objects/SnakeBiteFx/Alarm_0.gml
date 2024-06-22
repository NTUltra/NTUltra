/// @description Time increase
time += timeAcc;
if time >= 1
{
	alarm[1] = 5;
}
else
{
	alarm[0] = 1;
}
BackCont.shake += 2;