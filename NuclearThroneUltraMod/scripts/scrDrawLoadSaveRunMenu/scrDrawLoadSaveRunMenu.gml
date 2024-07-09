function scrDrawLoadSaveRunMenu() {
	if instance_exists(Menu)
	{
		txt0 = "LOAD RUN";
		if widescreen > 0
			widescreen -= 8;
	}
	else
		txt0 = "SAVE RUN";
	drawText = "";
	var col = c_white;
	if UberCont.loadRunMenuState > 0
		col = c_dkgray;
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	var yy = round(__view_get( e__VW.YView, 0 ) + 8);
	var xx = round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) * 0.5)
	draw_set_color(c_black)
	draw_text(xx,yy+1,txt0)
	draw_text(xx+1,yy+1,txt0)
	draw_text(xx+1,yy,txt0)
	draw_set_color(col)
	draw_text(xx,yy,txt0)
	var si;
	var screenwidth = 324;
	//draw_set_halign(fa_left)
	yy += 24;
	si = 0;
	function isHover(tx,ty,txt,theEvent,eventParam = 0)
	{
		if UberCont.loadRunMenuState < 1 && mouse_x > tx && mouse_x < tx + 64 && mouse_y > ty && mouse_y < ty + 41
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
		if UberCont.loadRunMenuState < 1
		{
			scrDrawTextBackgrounded(min(mouse_x,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - string_width(txt)),mouse_y + 16,txt);
		}
	}
	function nothing()
	{
		
	}
	function selectRun(runI)
	{
		scrLoadRun(runI + 1);
	}
	function deleteRun(runI)
	{
		snd_play_2d(sndClick);
		if (UberCont.loadRunMenuState) == 1
		{
			//ACTUALLY DELETE!
			//UPDATE saved run list!
			var fileString ="ntultrarun" + string(runI + 1) + ".sav";
			if (file_exists(fileString))
			{
				file_delete(fileString);
				UberCont.savedRuns[runI] = {};
				UberCont.loadRunMenuState = 0;
			}
		}
		else
		{
			alarm[11] = 15;//INPUT DELAY
			UberCont.loadRunMenuState = 1;
			UberCont.selectedRun = runI;
		}
	}
	function saveRun(runI)
	{
		snd_play_2d(sndClick);
		scrSaveRun(runI);
	}
	function overwriteRun(runI)
	{
		debug(runI);	
	}
	yy  += 41;
	var xo = xx - (64*2.5);
	var sRuns = UberCont.savedRuns;
	var al = array_length(sRuns);
	var sequence = 0;
	
	for (var j = 0; j < 3; j++)
	{
		xx = xo;
		for (var i = 0; i < 5; i++)
		{
			if (sequence >= UberCont.total_run_slots)
			{
				if UberCont.loadRunMenuState > 0
					draw_sprite_ext(sprRunSlot,0,xx, yy,1,1,0,make_colour_rgb(20,20,20),1);
				else
					draw_sprite_ext(sprRunSlot,0,xx, yy,1,1,0,c_gray,1);
				draw_sprite_ext(sprLocked,0,xx + 32,yy + 16,1,1,0,col,1);
				isHover(xx,yy,"UNLOCK IN THE VOID",nothing)
			}
			else if (sequence < al)
			{
				var thisCol = col;
				var cRun = sRuns[sequence];
				if variable_struct_exists(cRun, "race")
				{
					if UberCont.loadRunMenuState > 0 && sequence == UberCont.selectedRun
					{
						thisCol = c_white;
						draw_sprite(sprRunSlot,1,xx, yy);
						draw_sprite(sprRunDelete,1,xx, yy);
					}
					else if (UberCont.loadRunMenuState < 1 && mouse_x > xx + 48 && mouse_x < xx + 64 && mouse_y > yy && mouse_y < yy + 16)
					{
						draw_sprite(sprRunSlot,0,xx, yy);
						draw_sprite(sprRunDelete,1,xx, yy);
						drawText = "DELETE RUN?";
						if alarm[11] < 1 && mouse_check_button_pressed(mb_left)
							deleteRun(sequence);
					}
					else
					{
						if instance_exists(Menu)
							draw_sprite_ext(sprRunSlot,isHover(xx,yy,"PLAY RUN",selectRun,sequence),xx, yy,1,1,0,thisCol,1);
						else
							draw_sprite_ext(sprRunSlot,0,xx, yy,1,1,0,thisCol,1);
						draw_sprite_ext(sprRunDelete,0,xx, yy,1,1,0,thisCol,1);
					}
					draw_sprite_ext(sprCharSelect,cRun.race,xx + 3, yy + 4,1,1,0,thisCol,1);
					var ar = scrAreaName(cRun.lastarea,cRun.lastsubarea,cRun.loops);
					var t = ar[0];
					t = string_replace_all(t," ","\n");
					draw_set_halign(fa_left);
					if ar[1]
					{
						draw_set_valign(fa_bottom);
						draw_text_transformed_colour(xx + 24,yy + 8,t,1,-1,0,thisCol,thisCol,thisCol,thisCol,1);
						draw_set_valign(fa_top);
					}
					else
					{
						draw_text_colour(xx + 24,yy + 8,t,thisCol,thisCol,thisCol,thisCol,1);
					}
					var secondsstring=string(cRun.time_seconds)
					if cRun.time_seconds<10
					{secondsstring="0"+string(cRun.time_seconds);}
					var minutesstring = string(cRun.time_minutes)
					if cRun.time_minutes<10
					{minutesstring="0"+string(cRun.time_minutes);}
					draw_set_halign(fa_center)
					draw_text_colour(xx + 32,yy + 29.5,string(cRun.time_hours)+":"+minutesstring+":"+secondsstring,thisCol,thisCol,thisCol,thisCol,1);
				}
				else
				{
					if !instance_exists(Menu)
					{
						draw_sprite_ext(sprRunSlot,isHover(xx,yy,"SAVE RUN",saveRun,sequence),xx, yy,1,1,0,thisCol,1);
					}
					else
					{
						draw_sprite_ext(sprRunSlot,0,xx, yy,1,1,0,col,1);
					}
				}
			}
			else
			{
				if !instance_exists(Menu)
				{
					draw_sprite_ext(sprRunSlot,isHover(xx,yy,"SAVE RUN",saveRun,sequence),xx, yy,1,1,0,thisCol,1);
				}
				else
				{
					draw_sprite_ext(sprRunSlot,0,xx, yy,1,1,0,col,1);
				}
			}
			sequence += 1;
			xx += 64;
		}
		yy += 41;
	}
	if UberCont.loadRunMenuState == 1
	{
		draw_set_colour(c_white);
		var xxx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5)
		var yyy = camera_get_view_y(view_camera[0]) + 44;
		draw_text(xxx,
		round(camera_get_view_y(view_camera[0]) + 24),"ARE YOU SURE\nYOU WANT TO DELETE\nTHIS RUN?");
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
			deleteRun(UberCont.selectedRun);
		}
	}
	draw_set_halign(fa_left)
	if drawText != ""
		drawExplain(drawText);
}
