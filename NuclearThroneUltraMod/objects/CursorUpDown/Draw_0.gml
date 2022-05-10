draw_sprite(sprite_index,UberCont.opt_crosshair,x,y)
var cursorNumber = UberCont.opt_crosshair;

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
snd_play_2d(sndClick);
if cursorNumber>0
cursorNumber-=1;
else
cursorNumber=sprite_get_number(sprCrosshair)-1;

Cursor.image_index=cursorNumber;
UberCont.opt_crosshair=cursorNumber;
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
snd_play_2d(sndClick);
if cursorNumber < sprite_get_number(sprCrosshair)-1
cursorNumber += 1
else
cursorNumber=0;

Cursor.image_index=cursorNumber;
UberCont.opt_crosshair=cursorNumber;

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
