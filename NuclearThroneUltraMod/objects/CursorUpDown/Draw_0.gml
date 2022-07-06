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
}
var s = 8;
var xx = x+66;
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if UberCont.opt_crosshair == sprite_get_number(sprCrosshair)
{
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
			UberCont.customCrosshair = sprite_add(cursorFilePath,0,true,false,0,0);
			if sprite_exists(UberCont.customSideArt)
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
					if sw > s || sh > s
					{
						scale = s/max(sw,sh);
					}
				}
			}
		}
	}
}
draw_text(x+76,y,"SCALE\n     "+string(UberCont.opt_crosshair_scale));
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
