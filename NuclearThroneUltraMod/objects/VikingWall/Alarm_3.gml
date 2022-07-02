/// @description Blink
blink--
if blink > 0// || !visible
{
alarm[3] = 2;
visible = !visible;
}
else
{
	instance_destroy();	
}