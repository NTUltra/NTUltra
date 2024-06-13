/// @description Pause the fucking game
/*
with BackCont
{
	if surface_exists(shad)
		surface_free(shad);
}
with UberCont
{
	alarm[1] = other.introDuration;
	other.depth = depth - 999;
}*/
with FreezeFrame
{
	instance_destroy();
}
with instance_create(x,y,FreezeFrame)
{
	alarm[0] = other.introDuration;	
}
alarm[0] = introDuration;