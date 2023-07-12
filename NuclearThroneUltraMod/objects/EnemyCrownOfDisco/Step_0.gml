/// @description ANIMATE

// Inherit the parent event
event_inherited();

wave++;
alpha = alphaOrigin +(sin(wave)*0.1);
hue += spd;
theColour = make_color_hsv(hue,250,250);
if hue >= 360
	hue = 1;
spd = ogspd + cos(spd);
if ds_exists(sheep,ds_type_list)
{
	var al = ds_list_size(sheep);
	for (var i = 0; i < al; i++) {
		if (sheep[| i].time <= 0)
		{
			ds_list_delete(sheep,i);
			i = al;
		}
		else
		{
			sheep[| i].time --;
			sheep[| i].xx += sheep[| i].xspd;
			sheep[| i].yy += sheep[| i].yspd;
			sheep[| i].rot += sheep[| i].rotationspeed;
			if sheep[| i]. time < 6
				sheep[| i].alpha -= 0.2;
			else if sheep[| i].alpha < 1
				sheep[| i].alpha += 0.2;
		}
	}
}