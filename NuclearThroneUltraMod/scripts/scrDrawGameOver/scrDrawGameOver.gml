function scrDrawGameOver() {
	//GAME OVER
	if instance_exists(PlayerSpawn) || instance_exists(Player)
		return;
	draw_set_font(fntM)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	gameover = "";
	
	var area = BackCont.area;
	var subarea = BackCont.subarea
	var loops = BackCont.loops;

	var res = scrAreaName(area,subarea,loops);
	var txt = res[0];
	var upsideDown = res[1];
	if (UberCont.opt_gamemode != 25 && UberCont.opt_gamemode != 8)
		gameover = gameoverText+"##KILLS: "+string(BackCont.kills)+"###DIFFICULTY: "+string(BackCont.hard)
	else if (UberCont.opt_gamemode == 25)
	{
		txt = "";
		gameover = "KILLS: "+string(BackCont.kills)+"#WAVE: "+string(BackCont.subarea)+"#DIFFICULTY: "+string(BackCont.hard)
	}
	//if BackCont.loops > 0 && UberCont.opt_gamemode != 8
	//gameover += "#LOOPS: "+string(BackCont.loops)
	/*
	if UberCont.opt_shake != 1
	gameover += "##PLAYING WITH "+string(round(UberCont.opt_shake*100))+"% SCREENSHAKE"
	if UberCont.opt_freeze != 1
	gameover += "##PLAYING WITH "+string(round(UberCont.opt_freeze*100))+"% FREEZEFRAMES"
	*/
/*
	if UberCont.public = 0
	gameover += "##MODDED EARLY ACCESS DEVELOPMENT BUILD"
	if UberCont.public = 1
	gameover += "##MODDED EARLY ACCESS BUILD";
*/
	gameover += "##GAME MODE : "+UberCont.gamemode[UberCont.opt_gamemode];
	
	if (UberCont.opt_gamemode == 8)
	{
		txt = "";
		gameover += "##TIME SURVIVED: " + VanFan.txttime;
	}
	
	if gameovertime > 30
	{
		if UberCont.canRestart
		{
			gameover += "##[R] QUICK RESTART#[LEFT CLICK] MENU";
		}
		else
		{
			gameover += "##[LEFT CLICK] MENU";
		}
	}


	if (UberCont.canRestart && keyboard_check_pressed(ord("R")) or KeyCont.key_back[0] = 1) and gameovertime > 30
	{//QUICK RESTART
	with SurvivalWave
		instance_destroy();
	snd_play(sndMutant0Cnfm)
	race = UberCont.racepick
	crown = 1
	with all
	{
	if id != UberCont.id and persistent = true && id != Cursor.id
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
	if race = 0 || UberCont.opt_gamemode == 23
	{
		ranChar = true;
		do race = 1+irandom(racemax-1) until race_have[race] = 1
	}
	if crown = 0
	crown = ceil(random(crownmax))
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
			if opt_gamemode == 26 || opt_gamemode == 27
			{
				opt_gamemode = 0;	
			}
		}
	//BACK TO MENU
	snd_play(sndRestart)
	scrRestart()
	}
	if gameovertime > 20
	{
		var yy = string_height(string_hash_to_newline("A#A#A"))-4
	draw_set_color(c_black)
	draw_set_alpha(0.4)
	draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
	draw_set_alpha(1)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A"))+1,string_hash_to_newline(string(gameover)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A"))+1,string_hash_to_newline(string(gameover)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A")),string_hash_to_newline(string(gameover)))
	
	
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A")),string_hash_to_newline(string(gameover)))
	
	if upsideDown
	{
		draw_set_color(c_black)
		draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1-yy,string_hash_to_newline(txt),-1,-1,0)
		draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1-yy,string_hash_to_newline(txt),-1,-1,0)
		draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-yy,string_hash_to_newline(txt),-1,-1,0)
	
		draw_set_color(c_white)
		draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-yy,string_hash_to_newline(txt),-1,-1,0)
	}
	else
	{
		draw_set_color(c_black)
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1-yy,string_hash_to_newline(txt))
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1-yy,string_hash_to_newline(txt))
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-yy,string_hash_to_newline(txt))
	
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-yy,string_hash_to_newline(txt))
	}
	
	draw_set_valign(fa_top)
	}



}
