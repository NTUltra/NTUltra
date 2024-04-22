/// @description End it
with GameRender
{
	alarm[2] = 0;
	alarm[4] = 0;
	alarm[5] = 0;
	alarm[6] = 0;
	alarm[7] = 0;
	gameovertime = 0;
}
with Player
{
	visible = true;	
}
with DataRef
{
	instance_destroy();	
}