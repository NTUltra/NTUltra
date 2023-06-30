draw_set_color(c_black)

//alpha overlay
draw_set_alpha(0.8-(widescreen/48)*0.8)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)

//DRAW SOME SCREENS

if mode = 0
{
if widescreen > 0
widescreen -= 8


draw_sprite(sprLogo,-1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)

if image_index >= 14
{
draw_set_blend_mode(bm_add)
ang = 0

repeat(8)
{

draw_sprite_ext(sprLogoGlow,-1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+lengthdir_x(4+sin(wave)*(2+random(1)),ang),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+lengthdir_y(4+sin(wave)*(2+random(1)),ang),1,1,0,c_white,0.05)
ang += 360/8
wave += random(0.02)
}
draw_set_blend_mode(bm_normal)
wave += 0.05
}
}

if mode = 1
{

if CreditsSelect.selected = 0 and StatsSelect.selected = 0 and OptionSelect.selected = 0 and OptionSelect2.selected = 0 and UpdateSelect.selected = 0
{
scrDrawCharSelect()
}
else if StatsSelect.selected = 1
{
scrDrawStats()
}
else if CreditsSelect.selected = 1
{
scrDrawCredits()
}
else if UpdateSelect.selected = 1
{
scrDrawUpdate()
}
else if OptionSelect.selected = 1
{
scrDrawOptions()
}
else if OptionSelect2.selected = 1
{
scrDrawOptions2()
}
}
/*
if UberCont.encrypted_data.secrets[0] == true
	draw_set_color(c_fuchsia)
else*/
	draw_set_color(c_black);

//widescreen bars side art
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+widescreen,0)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen-5,0)


	draw_set_halign(fa_left)//jezus christ this menu systemm is fked up
	draw_set_valign(fa_top);
	draw_set_color(c_white)
	if widescreen > 0 && UberCont.gotAllGold && UberCont.completionpercentage >= 100
	{
		draw_sprite_ext(sprGameComplete,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+1,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
		draw_sprite_ext(sprGameComplete,1,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+widescreen,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
		draw_sprite_ext(sprGameComplete,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-1,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
		draw_sprite_ext(sprGameComplete,1,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen-3,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
	}
	
	
	if (!scrIsOnlyNormalGamemode())
	{
		//draw_text_color(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )-40 + widescreen,string_hash_to_newline("GAMEMODE:#"+gamemode[UberCont.opt_gamemode[0]]),c_white,c_white,c_white,c_white,1);
		var sw = 128;
		if !surface_exists(gmSurf)
		{
			gmSurf = surface_create(sw,16);
		}
		var gamemodeScrollString = "";
		var al = array_length(UberCont.opt_gamemode)
		for (var i = 0; i < al; i++)
		{
			if (UberCont.opt_gamemode[i] != 0)
			{
				gamemodeScrollString += string_replace_all(UberCont.gamemode[UberCont.opt_gamemode[i]],"#"," ");
				if i != al - 1
					gamemodeScrollString += " + ";
			}
		}
		gmwidth = max(0,string_width(gamemodeScrollString) - sw);
		var xx = lerp(
		-gmwidth,
		0,
		gmScroll);
		surface_set_target(gmSurf);
		draw_clear_alpha(c_black,0);
			draw_text_color(xx,1,gamemodeScrollString,c_ltgray,c_ltgray,c_ltgray,c_ltgray,1);	
		surface_reset_target();
		draw_text_color(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )-40 + widescreen,"GAMEMODE:",c_grey,c_grey,c_grey,c_grey,1);
		draw_surface(gmSurf,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )-32 + widescreen);
	}

	//draw_set_halign(fa_right)
	//draw_text_color(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+65,string_hash_to_newline(string(UberCont.completionpercentage)+"% COMPLETE"),c_black,c_black,c_black,c_black,1);
	draw_text_color(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 ) - 14 + widescreen,string_hash_to_newline(string(UberCont.completionpercentage)+"% COMPLETE"),c_white,c_white,c_white,c_white,1);
	draw_set_halign(fa_right)
	if UberCont.useSeed && UberCont.seedText != ""
		draw_text_color(__view_get( e__VW.XView, 0 )+camera_get_view_width(view_camera[0])-8,__view_get( e__VW.YView, 0 ) - 9 + widescreen,+"SEED: "+string(UberCont.seedText),c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_left)