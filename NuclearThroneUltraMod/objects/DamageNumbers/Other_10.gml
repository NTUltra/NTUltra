/// @description Draw event
speed = clamp(speed,1.5,6+size);
if dmg > 999 || dmg < 0
{
	instance_destroy();
	exit;
}
var decimals = frac(dmg);
var dmgs = string(floor(dmg));
var useSize = size;
var sprt;

if size < 0.625
{
	sprt = sprDmgNumbersSmall;
	useSize = max(1,size*3)
}
else if useSize < 1
{
	sprt = sprDmgNumbersMedium;
	useSize = size * 1.6;
}
else
{
	sprt = sprDmgNumbersBig;
	useSize = size;
}
if !surface_exists(surf)
	surf = surface_create(128,max(1,surfH));
surface_set_target(surf);
draw_clear_alpha(c_black,0);
	var xx = 1;
	var oy = middle;
	var yy = oy;
	var useFade = fade;
	var j = 1;
	repeat(2)
	{
		if dmgs != "" && dmgs != "00"
		{
			dmgs = string_digits(dmgs);
			var al = string_length(dmgs);
			var step = sprite_get_width(sprt)*useSize;
			for (var i = 0; i < al; i ++)
			{
				yy = oy - (useFade * j);
				j += 1;
				var img = real(string_char_at(dmgs,i+1));
				if useFade == 0
				{
					draw_sprite_ext(sprt,img,xx+1,yy,useSize,useSize,0,useOutlineCol,1);
					draw_sprite_ext(sprt,img,xx-1,yy,useSize,useSize,0,useOutlineCol,1);
					draw_sprite_ext(sprt,img,xx,yy+1,useSize,useSize,0,useOutlineCol,1);
					draw_sprite_ext(sprt,img,xx,yy-1,useSize,useSize,0,useOutlineCol,1);
		
					draw_sprite_ext(sprt,img,xx+1,yy+1,useSize,useSize,0,useOutlineCol,1);
					draw_sprite_ext(sprt,img,xx+1,yy-1,useSize,useSize,0,useOutlineCol,1);
					draw_sprite_ext(sprt,img,xx-1,yy+1,useSize,useSize,0,useOutlineCol,1);
					draw_sprite_ext(sprt,img,xx-1,yy-1,useSize,useSize,0,useOutlineCol,1);
				}
				draw_sprite_ext(sprt,img,xx,yy,useSize,useSize,0,useCol,1);
				xx += step + 1;
				useFade *= -1;
			}
		}
		if decimals > 0
		{
			xx += 4;
			var h = sprite_get_height(sprt) * useSize;
			dmgs = string_copy(string(decimals),3,2);
			sprt = sprDmgNumbersSmall;
			useSize = clamp(size * 1.5,1,2);
			oy = oy + h - (5*useSize);
			decimals = 0;
		}
		else
		{
			dmgs = "";	
		}
	}
surface_reset_target();
var xxx = x - camera_get_view_x(view_camera[0]);
var yyy = y - camera_get_view_y(view_camera[0]);
	draw_surface(surf,xxx-(xx*0.5),yyy-(surface_get_height(surf)*0.5));
/*
//Debug square
draw_rectangle(x-(xx*0.5),y-(surface_get_height(surf)*0.5),
x+(xx*0.5),y+(surfH*0.5),true);
*/
vspeed -= 0.03;