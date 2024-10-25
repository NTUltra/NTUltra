/// @description Draw a little menu
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fntM);
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5;
var yy = (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) * 0.5) - 32;
var title = "FOUND VANILLA GAME SAVE FILE\nDO YOU WANT TO LOAD\nUNLOCKED MUTANTS AND SKINS\nFROM THAT FILE?";
if step == 1
{
	title = "WOULD YOU LIKE TO PLAY NUCLEAR THRONE\nIN IT'S ORIGINAL DIFFICULTY?\nOR PREFER A MORE REASONABLE DIFFICULTY?"	
}
draw_text(xx,yy,title);
draw_set_valign(fa_top);
draw_set_font(fntB);
var tx = xx - 64;
var ty = yy + 64;
var opt1 = "YES!";
if step == 1
{
	tx = xx;
	ty -= 32;
	opt1 = "CLASSIC MODE";
}
draw_text(tx,ty,opt1);
var w = string_width(opt1) * 0.5;
var h = string_height(opt1);
if mouse_x > tx - w && mouse_x < tx + w
&& mouse_y > ty && mouse_y < ty + h
{
	draw_text_colour(tx,ty,opt1,c_lime,c_lime,c_lime,c_lime,1);
	if mouse_check_button_pressed(mb_left)
	{
		if step == 0
		{
			with UberCont
			{
				scrLoadInRetailSave();
			}
			step = 1;
		}
		else
		{
			with UberCont
			{
				opt_default_gm = 0;
				opt_gamemode = [opt_default_gm];
				scrSave();
			}
			draw_set_font(fntM);
			instance_destroy();
			room_goto(romGame);
		}
	}
}
var opt2 = "NO!";
tx = xx + 48;
if step == 1
{
	tx = xx;
	ty += 64;
	opt2 = "NORMAL MODE";	
}
w = string_width(opt2) * 0.5;
h = string_height(opt2);
draw_text(tx,ty,opt2);
if mouse_x > tx - w && mouse_x < tx + w
&& mouse_y > ty && mouse_y < ty + h 
{
	draw_text_colour(tx,ty,opt2,c_lime,c_lime,c_lime,c_lime,1);
	if mouse_check_button_pressed(mb_left)
	{
		if step == 1
		{
			with UberCont
			{
				opt_default_gm = 9;
				opt_gamemode = [opt_default_gm];
				scrSave();
			}
			draw_set_font(fntM);
			instance_destroy();
			room_goto(romGame);
		}
		else
		{
			step = 1;	
		}
	}
}
draw_set_font(fntM);