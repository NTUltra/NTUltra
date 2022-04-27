/*raw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
if UberCont.opt_autoaim > 0
UberCont.opt_autoaim -= 0.5
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
if UberCont.opt_autoaim < 2
UberCont.opt_autoaim += 0.5
}

if UberCont.opt_autoaim != 1
draw_text(x+20,y,"NOT AS GOOD!")


/* */
/*  */
