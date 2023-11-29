draw_sprite(sprite_index,UberCont.opt_crosshair,x,y)
var cursorNumber = UberCont.opt_crosshair;

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	if cursorNumber>0
	cursorNumber-=1;
	else
	cursorNumber=sprite_get_number(sprCrosshair);
	Cursor.sprite_index = sprCrosshair;
	Cursor.image_index=cursorNumber;
	UberCont.opt_crosshair=cursorNumber;
	with Cursor
	{
		var s = UberCont.opt_crosshair_scale;
		var sw = sprite_get_width(sprite_index);
		var sh = sprite_get_height(sprite_index);
		scale = s/max(sw,sh);
	}
}
else if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	if cursorNumber < sprite_get_number(sprCrosshair)
	cursorNumber += 1
	else
	cursorNumber=0;
	Cursor.sprite_index = sprCrosshair;
	Cursor.image_index=cursorNumber;
	UberCont.opt_crosshair=cursorNumber;
	with Cursor
	{
		var s = UberCont.opt_crosshair_scale;
		var sw = sprite_get_width(sprite_index);
		var sh = sprite_get_height(sprite_index);
		scale = s/max(sw,sh);
	}
}
var s = 8;
var xx = x+66;
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if UberCont.opt_crosshair == sprite_get_number(sprCrosshair)
{
	draw_text_colour(x+17,y-7,"REVERT [F6]\nCUSTOM",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y-7,"REVERT [F6]\nCUSTOM",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y-8,"REVERT [F6]\nCUSTOM",c_black,c_black,c_black,c_black,1);
	draw_text(x+17,y-8,"REVERT [F6]\nCUSTOM");
	draw_sprite(sprToggle,0,xx,y);
	if mouse_check_button_pressed(mb_left) && UberCont.mouse__x > xx and UberCont.mouse__x < xx+s and UberCont.mouse__y > y and UberCont.mouse__y < y+s
	{
		snd_play_2d(sndClick);
		//load in a file
		var cursorFilePath = get_open_filename(".png", "cursor");
		with UberCont
		{
			UberCont.opt_custom_crosshair = cursorFilePath;
			UberCont.customCrosshair = sprite_add(cursorFilePath,0,false,false,0,0);
			if sprite_exists(UberCont.customCrosshair)
			{
				var w = sprite_get_width(UberCont.customCrosshair);
				var h = sprite_get_height(UberCont.customCrosshair);
				sprite_set_offset(UberCont.customCrosshair,w*0.5,h*0.5);
				scrSave();
				with Cursor
				{
					sprite_index = UberCont.customCrosshair;
					image_index = 0;
					var s = UberCont.opt_crosshair_scale;
					var sw = sprite_get_width(sprite_index);
					var sh = sprite_get_height(sprite_index);
					scale = s/max(sw,sh);
				}
			}
			else
			{
				UberCont.opt_crosshair = 0;
				with Cursor
				{
					sprite_index = sprCrosshair
					image_index = 0;
					var s = UberCont.opt_crosshair_scale;
					var sw = sprite_get_width(sprite_index);
					var sh = sprite_get_height(sprite_index);
					scale = s/max(sw,sh);	
				}
			}
		}
	}
}
draw_text_colour(x+77,y,"\n     "+string(UberCont.opt_crosshair_scale),c_black,c_black,c_black,c_black,1);
draw_text_colour(x+77,y+1,"\n     "+string(UberCont.opt_crosshair_scale),c_black,c_black,c_black,c_black,1);
draw_text_colour(x+76,y+1,"\n     "+string(UberCont.opt_crosshair_scale),c_black,c_black,c_black,c_black,1);
draw_text(x+76,y,"\n     "+string(UberCont.opt_crosshair_scale));

xx+=51;
draw_sprite(sprite_index,0,xx,y);
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > xx+10 and UberCont.mouse__x < xx+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	with UberCont
	{
		opt_crosshair_scale += 2;
		if opt_crosshair_scale > 64
			opt_crosshair_scale = 2;
		scrSave();
	}
	with Cursor
	{
		var s = UberCont.opt_crosshair_scale;
		var sw = sprite_get_width(sprite_index);
		var sh = sprite_get_height(sprite_index);
		scale = s/max(sw,sh);
	}
}
else if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > xx and UberCont.mouse__x < xx+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	with UberCont
	{
		opt_crosshair_scale -= 2;
		if opt_crosshair_scale < 2
			opt_crosshair_scale = 64;
		scrSave();
	}
	with Cursor
	{
		var s = UberCont.opt_crosshair_scale;
		var sw = sprite_get_width(sprite_index);
		var sh = sprite_get_height(sprite_index);
		scale = s/max(sw,sh);
	}
}
xx -= 8;
draw_sprite_ext(sprToggle,0,xx,y,1,1,0,c_white,1);
var col = UberCont.opt_crosshair_colour;
draw_rectangle_colour(xx,y+1,xx+4,y+5,col,col,col,col,false);
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > xx and UberCont.mouse__x < xx+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	colourMenuOpen = !colourMenuOpen;
	snd_play_2d(sndClick);
}
else if (mx > xx - 42 && mx < xx + 10 &&
	mouse_y > y - 20 && mouse_y < y+80)
{	
	if mouse_check_button(mb_left)
	{
	
		var my = clamp(mouse_y - y - 5,0,61);
		//total of 61 pixels
		var part = 1 - (my/61);
		if mx > xx - 12
		{
			UberCont.opt_crosshair_colour_r = 255*part;
		}
		else if mx > xx - 23
		{
			UberCont.opt_crosshair_colour_g = 255*part;
		} else
		{
			UberCont.opt_crosshair_colour_b = 255*part;
		}
		UberCont.opt_crosshair_colour = make_colour_rgb(UberCont.opt_crosshair_colour_r,UberCont.opt_crosshair_colour_g,UberCont.opt_crosshair_colour_b);
		with Cursor {
			colour = UberCont.opt_crosshair_colour;	
		}
	}
	if mouse_wheel_up() {
		if mx > xx - 12
		{
			UberCont.opt_crosshair_colour_r = min(255,UberCont.opt_crosshair_colour_r + 1);
		}
		else if mx > xx - 23
		{
			UberCont.opt_crosshair_colour_g = min(255,UberCont.opt_crosshair_colour_g + 1);
		}
		else
		{
			UberCont.opt_crosshair_colour_b = min(255,UberCont.opt_crosshair_colour_b + 1);
		}
		UberCont.opt_crosshair_colour = make_colour_rgb(UberCont.opt_crosshair_colour_r,UberCont.opt_crosshair_colour_g,UberCont.opt_crosshair_colour_b);
		with Cursor {
			colour = UberCont.opt_crosshair_colour;	
		}
	}
	else if mouse_wheel_down() {
		if mx > xx - 12
		{
			UberCont.opt_crosshair_colour_r = max(0,UberCont.opt_crosshair_colour_r - 1);
		}
		else if mx > xx - 23
		{
			UberCont.opt_crosshair_colour_g = max(0,UberCont.opt_crosshair_colour_g - 1);
		}
		else
		{
			UberCont.opt_crosshair_colour_b = max(0,UberCont.opt_crosshair_colour_b - 1);
		}
		UberCont.opt_crosshair_colour = make_colour_rgb(UberCont.opt_crosshair_colour_r,UberCont.opt_crosshair_colour_g,UberCont.opt_crosshair_colour_b);
		with Cursor {
			colour = UberCont.opt_crosshair_colour;	
		}
	}
}
else if mouse_check_button_pressed(mb_left)
{
	colourMenuOpen = false;	
}
if !mouse_check_button(mb_left)
{
	mx = mouse_x;	
}
if colourMenuOpen
{
	xx -= 2;
	draw_sprite(sprColourMenu,0,xx,y);
	if mouse_wheel_up() || mouse_wheel_down()
		draw_sprite(sprScrollWIcon,1,xx + 1,y + 8);
	else
		draw_sprite(sprScrollWIcon,0,xx + 1,y + 8);
		//draw_sprite_ext(sprScrollWIcon,0,xx + 1,y + 8,1,1,0,c_silver,1);
	var t = y + 7;
	var b = y + 63;
	var r = lerp(b,t,UberCont.opt_crosshair_colour_r/255);
	draw_line_colour(xx-2,r,xx-12,r,c_white,c_white);
	var g = lerp(b,t,UberCont.opt_crosshair_colour_g/255);
	draw_line_colour(xx-13,g,xx-23,g,c_white,c_white);
	var bl = lerp(b,t,UberCont.opt_crosshair_colour_b/255);
	draw_line_colour(xx-24,bl,xx-34,bl,c_white,c_white);

}
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("00")))
y=round(__view_get( e__VW.YView, 0 )+88)

/*not funny
var cursorName;

switch(cursorNumber){
case 0:
cursorName="DEFAULT";
break;
case 1:
cursorName="DOT";
break;
case 2:
cursorName="DOT OUTLINED";
break;
case 3:
cursorName="CARBON6969 HYBRID ASSAULT RIFLE SIGHT";
break;
case 4:
cursorName="M12379 DOT SIGHT";
break;
case 5:
cursorName="X0";
case 6:
cursorName="X";
break;
break;
case 7:
cursorName="O SQUARED";
break;
case 8:
cursorName="SQUAR";
break;
case 9:
cursorName="Y.V.";
break;
case 10:
cursorName="ENTER THE GUNGEON REFRENCE";
break;
case 11:
cursorName="ENTER THE GUNGEON OUTLINED";
break;
case 12:
cursorName="THATS NOT NICE";
break;
case 13:
cursorName="O";
break;

}*/

/* */
/*  */
