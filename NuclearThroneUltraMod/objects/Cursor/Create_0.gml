image_speed=0;
image_index=UberCont.opt_crosshair;
scale = 1;
if UberCont.opt_crosshair == image_number && sprite_exists(UberCont.customCrosshair)
{
	image_index = 0;
	sprite_index = UberCont.customCrosshair;
}
var s = UberCont.opt_crosshair_scale;
var sw = sprite_get_width(sprite_index);
var sh = sprite_get_height(sprite_index);
scale = s/max(sw,sh);
display_set_gui_maximise(1,1);
