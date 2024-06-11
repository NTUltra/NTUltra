function scrDrawLoadRunMenu() {
	if widescreen > 0
		widescreen -= 8;
		
	txt0 = "LOAD RUN";
	drawText = "";
	var cRun = Menu.currentRun;
	var sRuns = Menu.savedRuns;
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	var yy = round(__view_get( e__VW.YView, 0 ) + 8);
	var xx = round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) * 0.5)
	draw_set_color(c_black)
	draw_text(xx,yy+1,txt0)
	draw_text(xx+1,yy+1,txt0)
	draw_text(xx+1,yy,txt0)
	draw_set_color(c_white)
	draw_text(xx,yy,txt0)
	var si;
	var screenwidth = 324;
	//draw_set_halign(fa_left)
	yy += 16;
	si = 0;
	function isHover(tx,ty,txt,theEvent)
	{
		if loadRunMenuState < 1 && mouse_x > tx && mouse_x < tx + 64 && mouse_y > ty && mouse_y < ty + 41
		{
			drawText = txt;
			if mouse_check_button_pressed(mb_left)
				theEvent();
			return 1;
		}
		return 0;
	}
	function drawExplain(txt)
	{
		if loadRunMenuState < 1
			draw_text(mouse_x,mouse_y,txt);	
	}
	function nothing()
	{
		
	}
	function playRun()
	{
		scrLoadRun();
	}
	function storeRun()
	{
		var saveFile ="ntultrarun" + string(UberCont.saveSlot) + ".sav";
		if file_exists(saveFile)
		{
			loadRunMenuState = 1;
		}
		
	}
	function selectRun()
	{
		
	}
	
	draw_sprite(sprRunSlot,isHover(xx - 32,yy,"CURRENT RUN",nothing),xx - 32, yy);
	if variable_struct_exists(cRun, "race")
	{
		var tx = xx - 32;
		draw_sprite(sprCharSelect,cRun.race,tx + 3, yy + 4);
		//draw_text(xx + 20,yy + 6,"L\n3-2B\n00:00");
		var ar = scrAreaName(cRun.lastarea,cRun.lastsubarea,cRun.loops);
		var t = ar[0];
		t = string_replace_all(t," ","\n");
		draw_text(tx + 40,yy + 8,t);
		var secondsstring=string(cRun.time_seconds)
		if cRun.time_seconds<10
		{secondsstring="0"+string(cRun.time_seconds);}
		var minutesstring = string(cRun.time_minutes)
		if cRun.time_minutes<10
		{minutesstring="0"+string(cRun.time_minutes);}
		draw_text(tx + 32,yy + 29.5,string(cRun.time_hours)+":"+minutesstring+":"+secondsstring);
	}
	draw_sprite(sprPlayRun,isHover(xx + 32,yy + 4,"PLAY CURRENT RUN",playRun),xx + 32, yy + 4);
	yy += 41;
	draw_sprite(sprStoreRun,isHover(xx + -16,yy + 4,"STORE CURRENT RUN",storeRun),xx - 16, yy + 4);
	yy  += 41;
	var xo = xx - (64*2.5);
	var al = array_length(sRuns);
	var sequence = 0;
	for (var j = 0; j < 3; j++)
	{
		xx = xo;
		for (var i = 0; i < 5; i++)
		{
			if (sequence > UberCont.total_run_slots)
			{
				draw_sprite_ext(sprRunSlot,0,xx, yy,1,1,0,c_gray,1);
				draw_sprite(sprLocked,0,xx + 32,yy + 16);
				isHover(xx,yy,"UNLOCK IN THE VOID",nothing)
			}
			else if (sequence < al)
			{
				draw_sprite(sprRunSlot,isHover(xx,yy,"SELECT AS CURRENT RUN",selectRun),xx, yy);
				draw_sprite(sprCharSelect,0,xx + 4, yy + 4);
				draw_text(xx + 20,yy + 6,"L\n3-2B\n00:00");
			}
			else
			{
				draw_sprite(sprRunSlot,0,xx, yy);	
			}
			sequence += 1;
			xx += 64;
		}
		yy += 41;
	}
	if loadRunMenuState > 0
	{
		draw_set_colour(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),
		camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),false);
		draw_set_colour(c_white);
		draw_set_alpha(1);
	}
	if loadRunMenuState == 1
	{
		draw_text(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),camera_get_view_y(view_camera[0]),"YOU HAVE NO SPACE\nDELETE A SAVE FILE");
	}
	draw_set_halign(fa_left)
	if drawText != ""
		drawExplain(drawText);
}
