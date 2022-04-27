draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)


draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x+20,y)


//UberCont.opt_gm1wep=wep;

//draw_sprite(wep_sprt[wep],0,x,y+24);
//draw_text_color(x,y+16,string(wep),c_white,c_white,c_white,c_white,1);

/*draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
if UberCont.opt_freeze > 0
UberCont.opt_freeze -= 0.1
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
if UberCont.opt_freeze < 4
UberCont.opt_freeze += 0.1
}

if UberCont.opt_freeze != 1
draw_text(x+20,y,"TWEAK IT!")


/* */
/*  */
