/// @description Slowly increase the acid
if acidSpeed < 0.005
{
	acidSpeed += 0.001;
	alarm[1] = 30;
}