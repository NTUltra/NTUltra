if (hasNoMenuOpen()
 && race != 0)
{
draw_set_halign(fa_left)
var xo = 0;

if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	xo = 108;

if (wepmenuopen && !ultraOpen) {
    draw_sprite(sprSplash,0,__view_get( e__VW.XView, 0 )+xo+77,__view_get( e__VW.YView, 0 )+49)
    var wepiter = 0;
    var wepx = 148;
    var wepy = 85;
    var spritewidth = 0;
    do {
		var sprite = wep_sprt[UberCont.start_wep[wepiter]];
        spritewidth = sprite_get_width(sprite);
        if wepx + spritewidth > 320 {
            wepx = 148;
            wepy += 16;
        }
        var xx = __view_get( e__VW.XView, 0 )+xo+wepx;
		var yy = __view_get( e__VW.YView, 0 )+wepy;
		var l = xx;
		xx += sprite_get_xoffset(sprite);
		var r = l + spritewidth;
		var sh = sprite_get_height(sprite) * 0.5;
		var t = yy - sh;
		var b = yy + sh;
		var imageIndex = 1;
		var col = make_colour_rgb(150, 150, 150);
		var selected = false;
		if UberCont.start_wep_have[wepiter,race]=1
		{
			if (UberCont.mouse__x > l && UberCont.mouse__x < r && UberCont.mouse__y > t && UberCont.mouse__y < b)
			{
				xx += 1;
				yy -= 2;
				col = c_white;
				if mouse_check_button_pressed(mb_left)
				{
					wep = wepiter;
				}
			}
			else if wep == wepiter
			{
				xx += 1;
				yy -= 2;
				col = c_white;
				selected = true;
			}
			imageIndex = 0;
		}
		else
		{
			var col = make_colour_rgb(100, 100, 100);	
		}
		if selected
		{
			shader_set(shdDrawWhite);
			draw_sprite_ext(sprite,imageIndex,xx+1,yy+1,1,1,0,c_white,1);
			draw_sprite_ext(sprite,imageIndex,xx+1,yy-1,1,1,0,c_white,1);
			draw_sprite_ext(sprite,imageIndex,xx-1,yy-1,1,1,0,c_white,1);
			draw_sprite_ext(sprite,imageIndex,xx-1,yy+1,1,1,0,c_white,1);
			shader_reset();
		}
		draw_sprite_ext(sprite,imageIndex,xx,yy,1,1,0,col,1);
		//draw_rectangle(l,t,r,b,true);
		
        wepx += 4 + spritewidth;
        wepiter++;
    } until (wepiter = UberCont.maxstartwep+1)
	var xx = __view_get( e__VW.XView, 0 )+xo+302;
	var yy = __view_get( e__VW.YView, 0 )+168//170;
	var o = 10;
	if UberCont.ctot_all_crowns_taken[Menu.race] > 0
	{
		if (UberCont.mouse__x > xx-o && UberCont.mouse__x < xx+o && UberCont.mouse__y > yy-o && UberCont.mouse__y < yy+o)
		{
			if mouse_check_button_pressed(mb_left)
			{
				UberCont.crown_start[Menu.race] = !UberCont.crown_start[Menu.race];
			}
			draw_sprite_ext(sprCrown0Idle,0,xx,yy,2.5,2.5,0,c_white,1);
		}
		else if (UberCont.crown_start[Menu.race])
		{
			shader_set(shdDrawWhite);
			draw_sprite_ext(sprCrown0Idle,0,xx+1,yy+1,2,2,0,c_white,1);
			draw_sprite_ext(sprCrown0Idle,0,xx+1,yy-1,2,2,0,c_white,1);
			draw_sprite_ext(sprCrown0Idle,0,xx-1,yy-1,2,2,0,c_white,1);
			draw_sprite_ext(sprCrown0Idle,0,xx-1,yy+1,2,2,0,c_white,1);
			shader_reset();
			draw_sprite_ext(sprCrown0Idle,0,xx,yy,2,2,0,c_white,1);
		}
		else
			draw_sprite_ext(sprCrown0Idle,0,xx,yy,2,2,0,make_colour_rgb(150, 150, 150),1);
	}
	else
	{
		draw_sprite_ext(sprUltraLevel,0,xx,yy,1.5,1.5,0,c_gray,1);
		//draw_sprite_ext(sprLocked,0,xx,yy,0.75,0.75,0,c_white,1);
	}
	//SKIN
	if skin=1 && UberCont.race_bskin[race]=1
	{//you have this one
	draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: B"),c_white,c_white,c_white,c_white,1);
	drawMenuBSkin(skin,race,c_white);
	}
	else if skin = 1
	{//you DONT have this one
		draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: B"),c_white,c_white,c_white,c_white,1);

		draw_sprite(sprLocked,0,sx-50,__view_get( e__VW.YView, 0 )+90);
		draw_set_halign(fa_right)
		draw_text_color(sx-19,__view_get( e__VW.YView, 0 )+101+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-19,__view_get( e__VW.YView, 0 )+99+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-21,__view_get( e__VW.YView, 0 )+101+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-21,__view_get( e__VW.YView, 0 )+99+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-19,__view_get( e__VW.YView, 0 )+100+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-21,__view_get( e__VW.YView, 0 )+100+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-20,__view_get( e__VW.YView, 0 )+100+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_white,c_white,c_white,c_white,1);
		draw_set_halign(fa_left)
		drawMenuBSkin(skin,race,c_black);
	}
	else if skin=2 && UberCont.race_cskin[race]=1
	{//you have this one
		draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: C"),c_white,c_white,c_white,c_white,1);
		drawMenuBSkin(skin,race,c_white);
	}
	else if skin = 2
	{//you DONT have this one
		draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: C"),c_white,c_white,c_white,c_white,1);

		draw_sprite(sprLocked,0,sx-50,__view_get( e__VW.YView, 0 )+90);
		draw_set_halign(fa_right)
		draw_text_color(sx-19,__view_get( e__VW.YView, 0 )+101+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-19,__view_get( e__VW.YView, 0 )+99+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-21,__view_get( e__VW.YView, 0 )+101+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-21,__view_get( e__VW.YView, 0 )+99+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-19,__view_get( e__VW.YView, 0 )+100+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-21,__view_get( e__VW.YView, 0 )+100+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
		draw_text_color(sx-20,__view_get( e__VW.YView, 0 )+100+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_white,c_white,c_white,c_white,1);
		draw_set_halign(fa_left)
		drawMenuBSkin(skin,race,c_black);
	}
	else
	{
		var letter = "A";
		switch (skin)
		{
			case 3:
				letter = "D";
			break;
			case 4:
				letter = "E";
			break;
			case 5:
				letter = "F";
			break;
			default:
				letter = "A";
			break;
		}
		draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: " + string(letter)),c_white,c_white,c_white,c_white,1);
		draw_set_halign(fa_left)
		drawMenuBSkin(skin,race,c_white);
	}

	draw_sprite_ext(sprSkinSelect,0,sx-12,__view_get( e__VW.YView, 0 )+64,scale,scale,0,c_white,scale-0.1);
	draw_set_valign(fa_bottom)

	
	//VIEW ULTRAS
	draw_sprite_ext(sprUltraInfo,0,sx-12 - 24,__view_get( e__VW.YView, 0 )+64,ultraScale,ultraScale,0,c_white,ultraScale-0.1);
}
else if !ultraOpen
{
	var xx = __view_get( e__VW.XView, 0 )+xo+304;
	var yy = __view_get( e__VW.YView, 0 )+174;
	draw_sprite(sprMutationSplat,3,xx+24,yy+44);
	var scl = 1.5;
	if (UberCont.crown_start[Menu.race])
		draw_sprite_ext(sprCrown0Idle,0,xx,yy,scl,scl,0,c_white,1);
	var spr = wep_sprt[UberCont.start_wep[wep]];
	var sprw = (sprite_get_xoffset(spr)*scl) - (sprite_get_width(spr)*scl);
	draw_sprite_ext(spr,0,xx+sprw-8,yy,scl,scl,0,c_white,1);
}
    draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+xo+300,__view_get( e__VW.YView, 0 )+arrowOpenerY,wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);

}
