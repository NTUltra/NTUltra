function scrDrawGameOver() {
	
	//GAME OVER
	if !instance_exists(DataRef) || !instance_exists(BackCont) || instance_exists(PlayerSpawn) || instance_exists(ShopWheel)
		return;
	var vx = 0;
	var vy = 0;
	var wh = camera_get_view_width(0)*0.5;
	var h = camera_get_view_height(0);
	var hh = h*0.5;
	gameover = "";
	if gameovertime == 0
		alarm[4] = 1;
	var area = BackCont.area;
	var subarea = BackCont.subarea
	var loops = BackCont.loops;

	var res = scrAreaName(area,subarea,loops);
	var txt = res[0];
	var upsideDown = res[1];
	if (!scrIsGamemode(25) && !scrIsGamemode(8))
		gameover = gameoverText+"##KILLS: "+string(BackCont.kills)+"#DIFFICULTY: "+string(BackCont.hard)
	else if (scrIsGamemode(25))
	{
		txt = "";
		gameover = "WAVE: "+string(BackCont.subarea)+"##KILLS: "+string(BackCont.kills)+"#DIFFICULTY: "+string(BackCont.hard)
	}
	//if BackCont.loops > 0 && UberCont.opt_gamemode != 8
	//gameover += "#LOOPS: "+string(BackCont.loops)
/*
	if UberCont.public = 0
	gameover += "##MODDED EARLY ACCESS DEVELOPMENT BUILD"
	if UberCont.public = 1
	gameover += "##MODDED EARLY ACCESS BUILD";
*/
	var normalMode = scrIsOnlyNormalGamemode();
	var gmt = "";
	if (array_length(UberCont.opt_gamemode) > 1)
		gmt += "GAME MODES :";
	else if !normalMode
		gmt += "GAME MODE :";
	else
		gmt += "NORMAL MODE";
	
	if (scrIsGamemode(8))
	{
		txt = "";
		gameover += "#TIME SURVIVED: " + VanFan.txttime;
	}
	var endText = "";
	if gameovertime > 30
	{
		if UberCont.canRestart
		{
			endText += "[R] QUICK RESTART -- [LEFT CLICK] MENU";
		}
		else
		{
			endText += "[LEFT CLICK] MENU";
		}
	}


	if (UberCont.canRestart && keyboard_check_pressed(ord("R")) ) and gameovertime > 30
	{//QUICK RESTART
		with SurvivalWave
			instance_destroy();
		snd_play(sndMutant0Cnfm)
		race = UberCont.racepick
		crown = [1]
		with all
		{
			if id != UberCont.id and persistent = true && id != Cursor.id && id != GameRender.id && id != KeyCont.id 
			{
				persistent = false
				instance_destroy()
			}
		}
		scrRaces()
		scrCrowns()
		var ranChar = false;
		with Player
		{
			//ultra_got[87] = 0;
			//skeletonlives = 0;
			instance_destroy();
		}
		if race = 0 || scrIsGamemode(23)
		{
			ranChar = true;
			do race = 1+irandom(racemax-1) until race_have[race] = 1
		}
		if scrIsGamemode(47)
		{
			if opt_gm_char_active == 0
			{
				do {useRaceActive = 1+irandom(racemax-1);} until (race_have[useRaceActive] = 1)
				with instance_create(x,y,UnlockPopup)
					mytext=other.race_name[other.useRaceActive];
			}
			else
			{
				useRaceActive = opt_gm_char_active
			}
		}
		if scrIsCrown(0)
			crown = [ceil(random(crownmax))]
		if !instance_exists(GenCont)
			with instance_create(x,y,GenCont)
			{race = other.race
			crown = other.crown}
		instance_create(x,y,Player);
		with MusCont
			instance_destroy()
		instance_create(0,0,MusCont)
		/*
		with Player
		{
			nochest = 0;
			randomlySelected = ranChar;
			restarted = true;
			skeletonlives = 0;
		}*/
		debug("GAMEOVER RESTART");
		if !instance_exists(StartDaily)
			room_restart()
		exit;
	}
	if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) and gameovertime > 40 && !instance_exists(PlayerSpawn)
	{
		debug("GAMEOVER QUIT");
		with UberCont
		{
			if scrIsGamemode(26) || scrIsGamemode(27)
			{
				opt_gamemode = [0];	
			}
		}
	//BACK TO MENU
	snd_play(sndRestart)
	scrRestart()
	}
	draw_set_valign(fa_top);
	draw_set_halign(fa_center)
	var yy = vy + 44;//48
	if gameovertime > 30
	{
		draw_set_color(c_black)
		draw_set_alpha(0.8);
		draw_rectangle(vx,vy,vx+__view_get( e__VW.WView, 0 ),vy+__view_get( e__VW.HView, 0 ),0)
		draw_set_alpha(1);
		draw_rectangle(vx,vy+hh-20,vx+__view_get( e__VW.WView, 0 ),vy+hh + 20,0);
		draw_text(vx+wh,yy+1,string_hash_to_newline(string(gameover)))
		draw_text(vx+wh+1,yy+1,string_hash_to_newline(string(gameover)))
		draw_text(vx+wh+1,yy,string_hash_to_newline(string(gameover)))
		
		draw_text(vx+wh,vy+h-20,endText);
		draw_text(vx+wh+1,vy+h+1-20,endText);
		draw_text(vx+wh+1,vy+h-20,endText);
	
	
		draw_set_color(c_white)
		//draw_set_halign(fa_left)
		var gotHover = scrDrawRoute();
		//draw_set_halign(fa_center)
		draw_text(vx+wh,yy,string_hash_to_newline(string(gameover)))
		
		draw_text(vx+wh,vy+h-20,endText);
		
		var yy = vy + hh - 32;
		if upsideDown
		{
			draw_set_color(c_black)
			draw_text_transformed(vx+wh,yy + 1,string_hash_to_newline(txt),-1,-1,0)
			draw_text_transformed(vx+wh+1,yy + 1,string_hash_to_newline(txt),-1,-1,0)
			draw_text_transformed(vx+wh+1,yy,string_hash_to_newline(txt),-1,-1,0)
	
			draw_set_color(c_white)
			draw_text_transformed(vx+wh,yy,string_hash_to_newline(txt),-1,-1,0)
		}
		else
		{
			draw_set_color(c_black)
			draw_text(vx+wh,yy + 1,string_hash_to_newline(txt))
			draw_text(vx+wh+1,yy + 1,string_hash_to_newline(txt))
			draw_text(vx+wh+1,yy,string_hash_to_newline(txt))
	
			draw_set_color(c_white)
			draw_text(vx+wh,yy,string_hash_to_newline(txt))
		}
		if instance_exists(DataRef) && DataRef.hitBy != noone
		{
			var xxx = vx + wh;
			var yyy = vy + hh + 44;
			var txt = "KILLED BY:";
			draw_set_color(c_black)
			draw_text(xxx,yyy+1,txt)
			draw_text(xxx+1,yyy+1,txt)
			draw_text(xxx+1,yyy,txt)
	
			draw_set_color(c_white)
			draw_text(xxx,yyy,txt)
			var a = 1;
			if sprite_get_number(DataRef.hitBy) > 2
			{
				a = image_number;
				if UberCont.normalGameSpeed == 60
					imageIndex += 0.4;
				else
					imageIndex += 0.8;
				a = imageIndex;
				if imageIndex > sprite_get_number(DataRef.hitBy)
					imageIndex = 0;
			}
			draw_sprite(DataRef.hitBy,a,round(xxx),round(yyy) + 32);
		}
		if is_array(gotHover)
		{
			draw_set_valign(fa_top)
			var tx = gotHover[2]
			var w = round((string_width(gotHover[0]) * 0.5) + 1);
			var th = round((string_height(gotHover[0]) * 0.5) + 1);
			var tty = round(yy - 6);
			if gotHover[1]
			{
				tty += 17;
				tx -= 6;//Size
				draw_rectangle_colour(tx-w-1,tty-th*2,tx+w,tty+1,c_black,c_black,c_black,c_black,false);
				draw_text_transformed(tx,tty,gotHover[0],-1,-1,0);
			}
			else
			{
				draw_rectangle_colour(tx-w-1,tty-1,tx+w,tty+(th*2),c_black,c_black,c_black,c_black,false);
				draw_text_transformed(tx,tty,gotHover[0],1,1,0);
			}
		}
	}

	if gameovertime > 30
	{
		var yyy = vy+hh + 22;//20
		draw_set_color(c_black)
		draw_text(vx + wh+1,yyy+1,gmt)
		draw_text(vx + wh+1,yyy+1,gmt)
		draw_text(vx + wh+1,yyy,gmt)
		
		draw_set_color(c_white)
		draw_text(vx + wh,yyy,gmt)
		if !normalMode
		{
			var gamemodeScrollString = "";
			var al = array_length(UberCont.opt_gamemode)
			for (var i = 0; i < al; i++)
			{
				if (UberCont.opt_gamemode[i] != 0)
				{
					gamemodeScrollString += string_replace_all(UberCont.gamemode[UberCont.opt_gamemode[i]],"#"," ");
					if i != al - 1 && UberCont.opt_gamemode[i + 1] != 0
						gamemodeScrollString += " + ";
				}
			}
			//var yyy = vy+__view_get( e__VW.HView, 0 )*0.5;
			gmwidth = max(0,string_width(gamemodeScrollString) - camera_get_view_width(0));
			var xx = lerp(
			vx+(wh) - gmwidth*0.5,
			vx+(wh) + gmwidth*0.5,
			gmScroll);
			//
			draw_set_color(c_black)
			draw_text(xx,yyy+1+9,gamemodeScrollString)
			draw_text(xx+1,yyy+1+9,gamemodeScrollString)
			draw_text(xx+1,yyy+9,gamemodeScrollString)
			draw_set_color(c_white)
			draw_text(xx,yyy+9,gamemodeScrollString)
		}
	}
	with UberCont
	{
		draw_set_valign(fa_top)
		draw_set_halign(fa_center)
		var formatString = "0:00:00:00";
		var yy = vy+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline(finalTime));
		draw_text_colour(vx+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline(formatString))*0.5+1,yy,string_hash_to_newline(finalTime),c_black
		,c_black,c_black,c_black,1);
		draw_text_colour(vx+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline(formatString))*0.5,yy,string_hash_to_newline(finalTime),c_black
		,c_black,c_black,c_black,1);
		draw_text_colour(vx+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline(formatString))*0.5,yy-1,string_hash_to_newline(finalTime),c_white
		,c_white,c_white,c_white,1);
	}
	draw_set_halign(fa_left)
}
