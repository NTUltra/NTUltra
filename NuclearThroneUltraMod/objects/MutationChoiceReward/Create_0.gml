/// @description Init
wave = 0;
depth = 1;
name = "BREAK THE CRYSTAL?";
instance_create(x,y,BigWallBreak);
collected = false;
crystalNumber = 0;
var hitProps = ds_list_create();
var amountOfProps = instance_place_list(x,y+140,prop,hitProps,false);
if amountOfProps > 0
{
	for (var i = 0; i < amountOfProps; i++) {
		with hitProps[| i] {
			instance_destroy(id,false);
		}
	}
}
ds_list_destroy(hitProps);
image_speed = 0;
with Portal
{
	instance_destroy(id,false);	
}
alarm[6] = 5;