x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 );
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )//-yy;

if drawtext
	with UnlockPopup
	{
		if id != other.id
		{
			drawtext = false;
			alarm[0] ++;
			image_index = 0;
		}
	}