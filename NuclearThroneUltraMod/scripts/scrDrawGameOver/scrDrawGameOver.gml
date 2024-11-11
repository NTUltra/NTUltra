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
	{
		alarm[4] = 1;
		alarm[8] = 50;
	}
	var area = BackCont.area;
	var subarea = BackCont.subarea
	var loops = BackCont.loops;

	var res = scrAreaName(area,subarea,loops);
	var txt = res[0];
	var upsideDown = res[1];
	var killText = "";
	var tierText = "";
	if (!scrIsGamemode(25) && !scrIsGamemode(8))
	{
		killText = string(BackCont.kills);
		tierText = string(BackCont.hard);
		gameover = gameoverText//+"##KILLS: "+string(BackCont.kills)+"#TIER: "+string(BackCont.hard)
	}
	else if (scrIsGamemode(25))
	{
		txt = "";
		gameover = gameoverText
		//gameover = "WAVE: "+string(BackCont.subarea)+"##KILLS: "+string(BackCont.kills)+"#TIER: "+string(BackCont.hard)
		killText = string(BackCont.kills);
		tierText = string(BackCont.hard);
	}

	var normalMode = scrIsOnlyNormalGamemode();
	var gmt = "";
	if (array_length(UberCont.opt_gamemode) > 1)
		gmt += "GAME MODES :";
	else if !normalMode
		gmt += "GAME MODE :";
	else
		gmt += UberCont.gamemode[UberCont.opt_default_gm] + " MODE";
	
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


	if (UberCont.canRestart && keyboard_check_pressed(ord("R")) ) and gameovertime > 30 && !instance_exists(PlayerInFakeDeath)
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
			with UberCont
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
		if !instance_exists(StartDaily)
		{
			room_goto(romGame);	
		}
		exit;
	}
	if ((keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) && gameovertime > 40 && !instance_exists(PlayerSpawn) && !instance_exists(PlayerInFakeDeath))
	{
		debug("GAMEOVER QUIT");
		with UberCont
		{
			if scrIsGamemode(26) || scrIsGamemode(27)
			{
				opt_gamemode = [opt_default_gm];	
			}
		}
	//BACK TO MENU
	snd_play(sndRestart)
	scrRestart()
	}
	draw_set_valign(fa_top);
	draw_set_halign(fa_center)
	var yy = vy + 32;//48
	if gameovertime > 20
	{
		draw_set_color(c_black)
		draw_set_alpha(lerp(0,0.8,clamp(((gameovertime-20) / 10),0,1)));
		draw_rectangle(vx,vy,vx+__view_get( e__VW.WView, 0 ),vy+__view_get( e__VW.HView, 0 ),0)
		draw_set_alpha(1);
	}
	if gameovertime > 30
	{
		if !scrIsGamemode(8)
		{
			draw_rectangle(vx,vy+hh-20 - 32,
			lerp(vx,vx+__view_get( e__VW.WView, 0 ),clamp((gameovertime-30) / 10,0,1)),
			vy+hh + 20 - 32,0);
		}
		
		var syy = yy + 22;
		var titleWidth = 210;
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		{
			titleWidth = 310;
			var sxx = vx + wh - 144
			var splatStep = 96;
		} else {
			var sxx = vx + wh - 120
			var splatStep = 80;
		}
		draw_text_ext(vx+wh,yy+1,string_hash_to_newline(string(gameover)),8,titleWidth)
		draw_text_ext(vx+wh+1,yy+1,string_hash_to_newline(string(gameover)),8,titleWidth)
		draw_text_ext(vx+wh+1,yy,string_hash_to_newline(string(gameover)),8,titleWidth)
		draw_set_halign(fa_left)
		draw_sprite(sprScoreSplat,clamp(((gameovertime-30) / 3),0,2),sxx,syy);
		if upsideDown
		{
			draw_set_color(c_black)
			var usx = sxx + string_width(txt);
			var usy = syy + (string_height(txt)*0.5) + 2
			draw_text_transformed(usx,usy + 1,string_hash_to_newline(txt),-1,-1,0)
			draw_text_transformed(usx+1,usy + 1,string_hash_to_newline(txt),-1,-1,0)
			draw_text_transformed(usx+1,usy,string_hash_to_newline(txt),-1,-1,0)
	
			draw_set_color(c_white)
			draw_text_transformed(usx,usy,string_hash_to_newline(txt),-1,-1,0)
		}
		else
		{
			draw_set_color(c_black)
			draw_text(sxx,syy + 1,string_hash_to_newline(txt))
			draw_text(sxx+1,syy + 1,string_hash_to_newline(txt))
			draw_text(sxx+1,syy,string_hash_to_newline(txt))
	
			draw_set_color(c_white)
			draw_text(sxx,syy,string_hash_to_newline(txt))
		}
		sxx += splatStep;
		draw_sprite(sprScoreSplat,clamp(((gameovertime-30) / 5),0,2),sxx,syy);
		draw_sprite(sprKills,0,sxx - 4,syy + 6);
		scrDrawTextBackgrounded(sxx + 12,syy,killText);
		sxx += splatStep;
		draw_sprite(sprScoreSplat,clamp(((gameovertime-30) / 6),0,2),sxx,syy);
		draw_sprite(sprWepTier,0,sxx + 2,syy + 1);
		scrDrawTextBackgrounded(sxx + 10,syy,tierText);
		
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(vx+wh,vy+h-20,endText);
		draw_text(vx+wh+1,vy+h+1-20,endText);
		draw_text(vx+wh+1,vy+h-20,endText);
	
	
		draw_set_color(c_white)
		draw_text_ext(vx+wh,yy,string_hash_to_newline(string(gameover)),8,titleWidth)
		draw_text(vx+wh,vy+h-20,endText);
		var gotHover = false;
		if !scrIsGamemode(8)
			gotHover = scrDrawRoute();
		
		if instance_exists(DataRef) && DataRef.hitBy != noone && DataRef.my_health <= 0
		{
			var xxx = sxx;//vx + wh + splatStep;
			var yyy = vy + hh + 4;
			var ktxt = "KILLED BY:";
			draw_sprite(sprKilledBySplat,clamp(((gameovertime-30) / 7),0,2),xxx,yyy);
			draw_set_color(c_black)
			draw_set_halign(fa_left);
			draw_text(xxx,yyy+1,ktxt)
			draw_text(xxx+1,yyy+1,ktxt)
			draw_text(xxx+1,yyy,ktxt)
	
			draw_set_color(c_white)
			draw_text(xxx,yyy,ktxt)
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
			xxx = round(xxx + 40);
			yyy = round(yyy);
			draw_sprite(DataRef.hitBy,a,xxx,yyy + 32);
			draw_set_halign(fa_center);
		}
		//DRAW WEAPONS
		draw_set_halign(fa_left);
		var wyy = vy + hh + 4;
		var surfW = 128;
		var surfH = 86;
		var margin = 20;
		var vMargin = 20;
		var hMargin = 20;
		var wxo = 4;
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		{
			titleWidth = 310;
			var wxx = vx + wh - 144 - 12
			surfW += 80;
			wxo += 16;
		} else {
			var wxx = vx + wh - 120
		}
		var wepsurfx = wxx - wxo
		var wepsurfy = wyy + 9;
		draw_sprite(sprKilledBySplat,clamp(((gameovertime-30) / 5),0,2),wxx,wyy);
		scrDrawTextBackgrounded(wxx,wyy,"WEAPONS FOUND:");
		if !surface_exists(wepSurf)
			wepSurf = surface_create(surfW,surfH);
		if mouse_wheel_down() {
			wepScroll += 8;
			if alarm[8] > 0
			{
				alarm[9] = 0;
				alarm[8] = 30;	
			}
			else if alarm[9] > 0
			{
				alarm[8] = 0;
				alarm[9] = 30;	
			}
			var maxi = (vMargin * (UberCont.longestWeaponRow + 1)) - surfH
			if wepScroll > maxi
			{
				wepScroll = max(0,maxi);
				alarm[8] = 0;
				alarm[9] = 30;
			}
		} else if mouse_wheel_up() {
			wepScroll -= 8;
			if alarm[8] > 0
			{
				alarm[9] = 0;
				alarm[8] = 30;	
			}
			else if alarm[9] > 0
			{
				alarm[8] = 0;
				alarm[9] = 30;
			}
			if wepScroll < 0
			{
				wepScroll = 0;
				alarm[9] = 0;
				alarm[8] = 30;
			}
		}
		var wy = vMargin - 8 + -wepScroll;
		surface_set_target(wepSurf);
		draw_clear_alpha(c_black,0);
		var wepHover = 0;
		with UberCont
		{
			var al = array_length(finalizedWeapons);
			if (al > 0)
			{
				var weaponStep = surfW/al;
				var weaponX = hMargin;
				for (var i = 0; i < al; i++)
				{
					var newHover = scrDrawWeaponsFound(finalizedWeapons[i],vMargin,weaponX,wy,wepsurfx,wepsurfy, surfH, weaponStep);
					if newHover != 0
						wepHover = newHover;
					weaponX += weaponStep;
				}
			}
		}
		surface_reset_target();
		draw_surface(wepSurf,wepsurfx,wepsurfy);
		if wepHover > 0
		{
			if alarm[8] > 0
			{
				alarm[9] = 0;
				alarm[8] = 30;	
			}
			else if alarm[9] > 0
			{
				alarm[8] = 0;
				alarm[9] = 30;
			}
			var wtxt = UberCont.wep_name[wepHover];
			var w = string_width(wtxt) + 1.5;
			var th = string_height(wtxt) + 1.5;
			var tx = mouse_x - camera_get_view_x(view_camera[0]) + 12;
			var ty = mouse_y - camera_get_view_y(view_camera[0]) - 12;
			draw_rectangle_colour(tx-1,ty-1,tx+w,ty+th,c_black,c_black,c_black,c_black,false);
			draw_set_colour(c_white);
			draw_text(tx + 1,ty + 1,wtxt);
		}
		draw_set_halign(fa_center);
		if is_array(gotHover)
		{
			draw_set_valign(fa_top)
			var tx = gotHover[2]
			var w = round((string_width(gotHover[0]) * 0.5) + 1);
			var th = round((string_height(gotHover[0]) * 0.5) + 1);
			var tty = round(vy+hh - 10)//round(vy+hh - 16)//20
			//var tty = round(yy - 6);
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
		var yyy = vy + h - 9;//20
		/*
		draw_set_color(c_black)
		draw_text(vx + wh+1,yyy+1,gmt)
		draw_text(vx + wh+1,yyy+1,gmt)
		draw_text(vx + wh+1,yyy,gmt)
		
		draw_set_color(c_white)
		draw_text(vx + wh,yyy,gmt)
		*/
		draw_set_halign(fa_left)
		if !normalMode
		{
			var gamemodeScrollString = "";
			var al = array_length(UberCont.opt_gamemode)
			for (var i = 0; i < al; i++)
			{
				if (UberCont.opt_gamemode[i] != UberCont.opt_default_gm)
				{
					gamemodeScrollString += string_replace_all(UberCont.gamemode[UberCont.opt_gamemode[i]],"#"," ");
					if i != al - 1 && UberCont.opt_gamemode[i + 1] != 0
						gamemodeScrollString += " + ";
				}
			}
			//var yyy = vy+__view_get( e__VW.HView, 0 )*0.5;
			gmwidth = max(0,string_width(gamemodeScrollString) - (camera_get_view_width(0) - 116));
			//if string_width(gamemodeScrollString) > camera_get_view_width(view_camera[0])
			//	gmwidth = string_width(gamemodeScrollString);
			var xx = lerp(
			vx+(20) - gmwidth,
			vx+(20),
			gmScroll);
			//
			draw_set_color(c_black)
			draw_text(xx,yyy+1,gamemodeScrollString)
			draw_text(xx+1,yyy+1,gamemodeScrollString)
			draw_text(xx+1,yyy,gamemodeScrollString)
			draw_set_color(c_gray)
			draw_text(xx,yyy,gamemodeScrollString);
			draw_set_color(c_white)
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
