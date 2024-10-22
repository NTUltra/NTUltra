draw_sprite(sprite_index,image_index,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	event_user(0);
}
var str = "LOAD  ";
draw_sprite(sprWepTier,0,x - 10,y + 2);
scrDrawTextBackgrounded(x - string_width(str) - 4,y,str);