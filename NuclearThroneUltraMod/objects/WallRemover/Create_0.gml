/// @description Radius
radius = 10;
opacity = 1;
alarm[1] = 5;
//Don't die to being outside area
with enemy
{
	alarm[10] = 0;	
}
with PlayerAlarms
{
	alarm[9] = 1;
}
with TopDecal
	instance_destroy();
with Bones
	instance_destroy();