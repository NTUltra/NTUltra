/// @description New update popup
newUpdateLerpTime += 0.1;
if newUpdateLerpTime > 1.1
{
	newUpdateLerpTime = 1;
	alarm[2] = 110;
}
else
{
	alarm[1] = 1;	
}