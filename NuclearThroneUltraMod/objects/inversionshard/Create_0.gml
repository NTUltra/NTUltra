/// @description Init
wave = 0;
depth = 7;
name = "COLLECT?";
instance_create(x,y,BigWallBreak);
collected = false;

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
image_index = irandom(image_number-1);
image_speed = 0;