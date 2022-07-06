/// @description Revert custom crosshair
if UberCont.opt_crosshair == sprite_get_number(sprCrosshair)
{
	UberCont.opt_crosshair = 0;
	with Cursor
	{
		sprite_index = sprCrosshair;
		image_index = 0;
		var s = other.opt_crosshair_scale;
		var sw = sprite_get_width(sprite_index);
		var sh = sprite_get_height(sprite_index);
		scale = s/max(sw,sh);
	}
}