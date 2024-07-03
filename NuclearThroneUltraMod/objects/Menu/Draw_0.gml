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

	if !audio_is_playing(sndLogoLoop)
		snd_loop(sndLogoLoop);
	draw_sprite(sprLogo,-1,round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5),round(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.5))

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
} else if audio_is_playing(sndLogoLoop)
	audio_stop_sound(sndLogoLoop);


/*
if UberCont.encrypted_data.secrets[0] == true
	draw_set_color(c_fuchsia)
else*/
	draw_set_color(c_black);
	draw_set_halign(fa_left)//jezus christ this menu systemm is fked up
//widescreen bars side art
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+widescreen,0)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen-5,0)
if widescreen > 0
{
	var skinIndex = racemax * 3;
	if race != 0
	{
		var additional = 0;
		if widescreen < 48
		{
			portraitLerp -= 0.3;
			if portraitLerp < 0
				portraitLerp = 0;
		}
		else
		{
			portraitLerp += 0.3;
			if portraitLerp > 2
				portraitLerp = 2;
		}
		additional = lerp(32,0,portraitLerp-2);
		skinIndex = scrRaceToPortraitIndex(race,skin);
		draw_set_font(fntB);
		var bpx;
		var tpx;
		var rn = race_name[race];
		if race == 20
			rn = "BUSINESS\nHOG";
		else if race == 26
			rn = "GOOD O'L\nHUMPHRY";
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1//WIDE SCREEN MORE SPACE FOR PORTRAIT!
		{
			bpx = lerp(__view_get( e__VW.XView, 0 )-106,__view_get( e__VW.XView, 0 ) + 92 + additional,min(1,portraitLerp));
			tpx = lerp(__view_get( e__VW.XView, 0 )-string_width(rn),__view_get( e__VW.XView, 0 ) + 2,portraitLerp - 1);
		}
		else
		{
			bpx = lerp(__view_get( e__VW.XView, 0 )-106,__view_get( e__VW.XView, 0 ) + 54 + additional,min(1,portraitLerp));
			if instance_exists(LoadoutSelect)// && LoadoutSelect.wepmenuopen
			{
				bpx -= lerp(0,64,LoadoutSelect.time);
			}
			tpx = lerp(__view_get( e__VW.XView, 0 )-string_width(rn),__view_get( e__VW.XView, 0 ),portraitLerp - 1);
		}
		draw_sprite_ext(sprSplat2,lerp(1,3,portraitLerp*0.5),
		lerp(__view_get( e__VW.XView, 0 ) - 256,__view_get( e__VW.XView, 0 ),min(1,portraitLerp*0.75)),
		__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 2,-1,1,0,c_white,1);
		if !instance_exists(LoadoutSelect) || !LoadoutSelect.ultraOpen
		{
			var col = c_white
			if instance_exists(LoadoutSelect) && LoadoutSelect.skinLocked
				col = c_black;
			if skinIndex == 20
			{
				//Simple black top for Eye's void skin
				draw_rectangle(bpx - 100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 8 - 192,
				bpx + 100, __view_get( e__VW.YView, 0 ),false);
			}
			draw_sprite_ext(sprBigPortrait,skinIndex,bpx,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 8,1,1,0,col,1);
		}
		draw_set_valign(fa_bottom);
		draw_text_colour(tpx + 1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 5,rn,c_black,c_black,c_black,c_black,1);
		draw_text_colour(tpx,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 5,rn,c_black,c_black,c_black,c_black,1);
		draw_text_colour(tpx,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 4,rn,c_black,c_black,c_black,c_black,1);
		draw_text_colour(tpx + 1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 6,rn,c_black,c_black,c_black,c_black,1);
		draw_text_colour(tpx,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 6,rn,c_white,c_white,c_white,c_white,1);
		draw_set_font(fntM);
	}
}
else
{
	portraitLerp = 0;//TODO SEPERATE NAME LERP
}

	draw_set_valign(fa_top);
	draw_set_color(c_white)
	if widescreen > 0 && UberCont.completionpercentage >= 200
	{
		draw_sprite_ext(sprGameComplete,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+1,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
		draw_sprite_ext(sprGameComplete,1,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+widescreen,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
		draw_sprite_ext(sprGameComplete,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-1,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
		draw_sprite_ext(sprGameComplete,1,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen-3,__view_get( e__VW.WView, 0 ),1,0,c_white,1);
	}
	
	
	if (!scrIsOnlyNormalGamemode())
	{
		//draw_text_color(__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )-40 + widescreen,string_hash_to_newline("GAMEMODE:#"+gamemode[UberCont.opt_gamemode[0]]),c_white,c_white,c_white,c_white,1);
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
			var sw = 216;
		else
			var sw = 118;
		
		if !surface_exists(gmSurf)
		{
			gmSurf = surface_create(sw,16);
		} else if surface_get_width(gmSurf) != sw
			surface_resize(gmSurf,sw,16);
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
	xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-8;
	/*
	draw_set_color(c_gray)
	draw_text(xx, camera_get_view_y(view_camera[0])+8,
	"["+UberCont.updateVersion + UberCont.subUpdateVersion + "]" + UberCont.notUpdated);
	*/
	draw_set_halign(fa_left)
	draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 ) - 49 + widescreen,string(UberCont.completionpercentage)+"% COMPLETE",c_white,c_white,c_white,c_white,1);
	if UberCont.useSeed && UberCont.seedText != ""
		draw_text_color(__view_get( e__VW.XView, 0 )+camera_get_view_width(view_camera[0])-8,__view_get( e__VW.YView, 0 ) - 9 + widescreen,+"SEED: "+string(UberCont.seedText),c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_bottom);
	
if mode = 1
{
	if instance_exists(LoadSelect) && LoadSelect.selected = 1
	{
		scrDrawLoadSaveRunMenu();
	}
	else if CreditsSelect.selected = 0 and StatsSelect.selected = 0 and OptionSelect.selected = 0 and OptionSelect2.selected = 0 and UpdateChecker.selected = 0
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
	else if UpdateChecker.selected = 1
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