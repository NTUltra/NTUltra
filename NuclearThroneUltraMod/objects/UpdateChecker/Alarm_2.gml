/// @description New update popup gone
newUpdateLerpTime -= 0.2;
if newUpdateLerpTime <= 0
{
	newUpdateLerpTime = 0;
}
else
{
	alarm[2] = 1;	
}