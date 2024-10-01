/// @description xxx
x = camera_get_view_x(view_camera[0]) + 32
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 64;
if instance_exists(UltraIcon)
	y -= 24;
if
mouse_x > x - 12 && mouse_x < x + 12 &&
mouse_y > y - 12 && mouse_y < y + 12
{
	if mouse_check_button_pressed(mb_left)
	{
		snd_play_2d(sndClick);
		with LevCont
		{
			var spd = 300;
			if scroll - spd < 0
			{
				spd = max(0,scroll);
			}
			with SkillIcon {
				x += spd;
			}
			with UltraIcon {
				x += spd;
			}
			scroll -= spd;
			debug(spd);
		}
	}
	if image_xscale == 1
		snd_play_2d(sndHover);
	image_xscale = 1.5;
	image_yscale = 1.5;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
}