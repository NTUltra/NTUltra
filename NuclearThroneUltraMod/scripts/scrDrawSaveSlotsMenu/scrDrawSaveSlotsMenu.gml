function scrDrawSaveSlotsMenu() {
	txt0 = "#SAVE/LOAD GAME###########################PRESS [RIGHT CLICK] TO RETURN";
	txt1 = "###";
	txt2 = "###";
		
	stxt0 = "#SAVE/LOAD GAME"
	stxt1 = "######"
	stxt2 = txt2;
	drawText = "";
	
	/*
		When there is a save add a X button top right to delete
		When there is no save add a copy button to top right to copy current save
		When there is a save main button becomes load >CONFIRM<
		When there is no save main button becomes start new game
		when game is currnet highlight it
	*/
	var col = c_white;
	if Menu.saveSlotState > 0
		col = c_dkgray;
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	var yy = round(__view_get( e__VW.YView, 0 ) + 8);
	var xx = round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) * 0.5)
	var si;
	var screenwidth = 324;
	//draw_set_halign(fa_left)
	//yy += 24;
	si = 0;
	function isHover(tx,ty,txt,theEvent,eventParam = 0)
	{
		if Menu.saveSlotState < 1 && mouse_x > tx && mouse_x < tx + 160 && mouse_y > ty && mouse_y < ty + 41
		{
			drawText = txt;
			if mouse_check_button_pressed(mb_left)
				theEvent(eventParam);
			return 1;
		}
		return 0;
	}
	function drawExplain(txt)
	{
		if Menu.saveSlotState < 1
		{
			scrDrawTextBackgrounded(min(mouse_x,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - string_width(txt)),mouse_y + 16,txt);
		}
	}
	function nothing()
	{
		
	}
	function loadGame(gameI)
	{
		with UberCont
		{
			currentSave = gameI;
			scrSaveGamePreferenceOptions();
		}
		game_restart();
	}
	function deleteGame(gameI)
	{
		snd_play_2d(sndClick);
		if (Menu.saveSlotState) == 1
		{
			//ACTUALLY DELETE!
			//UPDATE saved run list!
			scrDeleteGameSave(gameI);
			Menu.saveSlotState = 0;
		}
		else
		{
			alarm[11] = 15;//INPUT DELAY
			Menu.saveSlotState = 1;
			Menu.selectedSaveSlot = gameI;
		}
	}
	function saveGame(gameI)
	{
		snd_play_2d(sndClick);
		with UberCont
		{
			scrSave(gameI);
		}
		Menu.savedGames[gameI] = {};
		Menu.savedGames[gameI] = {
			datetime: date_datetime_string(date_current_datetime()),
			completion: UberCont.completionpercentage,
		};
	}
	function newGame(gameI)
	{
		with UberCont
		{
			currentSave = gameI;
			scrSaveGamePreferenceOptions();
			canSave = false;
			persistent = false;
		}
		game_restart();
	}
	yy  += 41 + 24;
	xx -= 80;//- (64*2.5);
	var sequence = 0;
	for (var i = 0; i < Menu.saveGameSlots; i++)
	{
		var thisCol = col;
		var cRun = Menu.savedGames[sequence];
		var slot = "A";
		switch (sequence)
		{
			case 1:
				slot = "B";
			break;
			case 2:
				slot = "C";
			break;
			default:
				slot = "A";
			break;
		}
		if variable_struct_exists(cRun, "completion")
		{
			if Menu.saveSlotState > 0 && sequence == Menu.selectedSaveSlot
			{
				thisCol = c_white;
				if sequence == UberCont.currentSave
					draw_sprite(sprGameSlot,3,xx, yy);
				else
					draw_sprite(sprGameSlot,1,xx, yy);
				draw_sprite(sprRunDelete,1,xx + 96, yy);
			}
			else if (Menu.saveSlotState < 1 && mouse_x > xx + 144 && mouse_x < xx + 164 && mouse_y > yy && mouse_y < yy + 16)
			{
				if sequence == UberCont.currentSave
					draw_sprite(sprGameSlot,2,xx, yy);
				else
					draw_sprite(sprGameSlot,0,xx, yy);
				draw_sprite(sprRunDelete,1,xx + 96, yy);
				drawText = "DELETE GAME?";
				if alarm[11] < 1 && mouse_check_button_pressed(mb_left)
					deleteGame(sequence);
			}
			else
			{
				if sequence == UberCont.currentSave
					draw_sprite_ext(sprGameSlot,2 + isHover(xx,yy,"LOAD GAME?",loadGame,sequence),xx, yy,1,1,0,thisCol,1);
				else
					draw_sprite_ext(sprGameSlot,isHover(xx,yy,"LOAD GAME?",loadGame,sequence),xx, yy,1,1,0,thisCol,1);
				draw_sprite_ext(sprRunDelete,0,xx + 96, yy,1,1,0,thisCol,1);
			}
			//draw_sprite_ext(sprCharSelect,0,xx + 3, yy + 4,1,1,0,thisCol,1);
			var t = "COMPLETION: " + string(cRun.completion) + "%";
			draw_set_halign(fa_left);
			draw_text_colour(xx + 80,yy + 5,slot,thisCol,thisCol,thisCol,thisCol,1);
			draw_text_colour(xx + 8,yy + 17,t,thisCol,thisCol,thisCol,thisCol,1);
			draw_set_halign(fa_center)
			draw_text_colour(xx + 80,yy + 29,cRun.datetime,thisCol,thisCol,thisCol,thisCol,1);
		}
		else
		{
			if (Menu.saveSlotState < 1 && mouse_x > xx + 144 && mouse_x < xx + 164 && mouse_y > yy && mouse_y < yy + 16)
			{
				if sequence == UberCont.currentSave
					draw_sprite(sprGameSlot,2,xx, yy);
				else
					draw_sprite(sprGameSlot,0,xx, yy);
				draw_sprite(sprSaveGameButton,1,xx + 96, yy);
				drawText = "SAVE GAME?";
				if alarm[11] < 1 && mouse_check_button_pressed(mb_left)
					saveGame(sequence);
			}
			else
			{
				if sequence == UberCont.currentSave
					draw_sprite_ext(sprGameSlot,2 + isHover(xx,yy,"NEW GAME?",newGame,sequence),xx, yy,1,1,0,thisCol,1);
				else
					draw_sprite_ext(sprGameSlot,isHover(xx,yy,"NEW GAME?",newGame,sequence),xx, yy,1,1,0,thisCol,1);
				draw_sprite_ext(sprSaveGameButton,0,xx + 96, yy,1,1,0,thisCol,1);
			}
			draw_set_halign(fa_left);
			draw_text_colour(xx + 80,yy + 5,slot,thisCol,thisCol,thisCol,thisCol,1);
		}
		sequence += 1;
		yy += 41;
	}
	if Menu.saveSlotState == 1
	{
		draw_set_colour(c_white);
		draw_set_halign(fa_center);
		var xxx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5)
		var yyy = camera_get_view_y(view_camera[0]) + 44;
		draw_text(xxx,
		round(camera_get_view_y(view_camera[0]) + 24),"ARE YOU SURE\nYOU WANT TO DELETE\nTHIS GAME SAVE?");
		draw_sprite_ext(sprLMBIcon,0,xxx - 36,yyy+12,1,1,0,c_white,1);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_colour(c_black);
		draw_text(xxx - 16,yyy+17,"YES");
		draw_text(xxx - 15,yyy+17,"YES");
		draw_text(xxx - 15,yyy+16,"YES");
		draw_text(xxx + 16,yyy+17,"NO");
		draw_text(xxx + 17,yyy+17,"NO");
		draw_text(xxx + 17,yyy+16,"NO");
		draw_set_colour(c_white);
		draw_text(xxx - 16,yyy+16,"YES");
		draw_text(xxx + 16,yyy+16,"NO");
		draw_sprite_ext(sprRMBIcon,0,xxx + 25,yyy+12,1,1,0,c_white,1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		if alarm[11] < 1 && mouse_check_button_pressed(mb_left) {
			deleteGame(Menu.selectedSaveSlot);
		}
	}
	draw_set_halign(fa_left)
	if drawText != ""
		drawExplain(drawText);
}
