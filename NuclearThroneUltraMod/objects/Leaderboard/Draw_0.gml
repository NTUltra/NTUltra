/// @description Draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
enablePopUp = 0;
if !connectionSuccess {
	draw_text(x + 16,y-16,"CONNECTION FAILED");
draw_text(x + 16,y+1256,"leaderboardType  " + string(leaderboardType));
}
else if array_length(leaderboard) > 0
{
	var space = 22;
	draw_text(x + 16,y-16,leaderboardName[0]);
	//draw_set_halign(fa_right);
	//draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 16,y-16,leaderboardName[1]);
	var surf = surface_create(174,max(1,string_height(leaderboardName[1])));
	surface_set_target(surf);
	draw_clear_alpha(c_black,0.0);
	var ux = 0;
	var uw = string_width(leaderboardName[1]);
	if (uw > 174)
	{
		//scrolling	
		ux = lerp(0,0-max(0,uw-174),killScroll);
	}
	draw_text(ux,0,leaderboardName[1]);
	surface_reset_target();
	draw_surface(surf,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 16 - min(string_width(leaderboardName[1]),174), y-16);
	surface_free(surf);
	draw_set_halign(fa_left);
	var al = array_length(leaderboard);
	if leaderboardType == LEADERBOARD.SCORE
	{
		for (var i = 0; i < al; i++)
		{
			var yy = y + (space * i);
			var entry = leaderboard[i];
			draw_text_ext(x,yy,string((page*10) + i + 1) + ".",10,14);
			var xx = x + 31;
			var surf = surface_create(108,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var ux = 0;
			var uw = string_width(entry[1]);
			if (uw > 108)
			{
				//scrolling	
				ux = lerp(0,0-max(0,uw-108),killScroll);
			}
			draw_text(ux,0,entry[1]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
			surface_free(surf);
			
			xx += 104;
			draw_sprite(sprKills,0,xx,yy+5);
			var surf = surface_create(64,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var kx = 0;
			var kw = string_width(entry[0]);
			if (kw > 64)
			{
				//scrolling	
				kx = lerp(0,0-max(0,kw-64),killScroll);
			}
			draw_text(kx,0,entry[0]);
			surface_reset_target();
			xx += 14;
			draw_surface(surf,xx,yy);
			surface_free(surf);
			xx += 74;
			draw_sprite(scrLeaderboardRace(entry[5],entry[6],entry[7],entry[2]),0,xx,yy+3);
			if (entry[5] == 24)
			{
				if entry[6] == 2
				{
					draw_sprite_ext(sprMutant24CIdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
				else if entry[6] == 1
				{
					draw_sprite_ext(sprMutant24BIdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
				else
				{
					draw_sprite_ext(sprMutant24IdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
			}
			xx += 20;
			var area = scrAreaName(real(entry[2]),real(entry[3]),0);
			if entry[4] != "0"
			{
				if area[1] {
					draw_set_valign(fa_bottom);
					draw_set_halign(fa_right);
					draw_text_ext_transformed(xx,yy-7,area[0],10,44,-1,-1,0);
				}
				else
				{
					draw_set_valign(fa_bottom);
					draw_text_ext(xx,yy,area[0],10,48);
				}
				draw_set_valign(fa_top);
				draw_set_halign(fa_left);
				draw_text_ext(xx,yy+3,"L"+entry[4],10,48);
			}
			else
			{
				if area[1] {
					draw_set_valign(fa_bottom);
					draw_set_halign(fa_right);
					draw_text_ext_transformed(xx,yy-3,area[0],10,44,-1,-1,0);
				}
				else
				{
					draw_text_ext(xx,yy,area[0],10,48);
				}
				draw_set_valign(fa_top);
				draw_set_halign(fa_left);
			}
			xx += 48;
			//5 = race Enter logic to determine skin
			// 6 = bskin
			//7 = altultra
			scrDrawLeaderboardWeapon(entry, 8, xx, yy);
			xx += 48;
			if (entry[11] != "[1]" && entry[11] != "")
			{
				scrDrawLeaderboardCrown(scrStringArrayToNumbersArray(entry[11]),xx,yy);
			}
			xx += 16;
			scrDrawLeaderboardUltra(xx,yy,entry,5,6,7,13);
			xx += 32;
			draw_sprite(sprUltraModIcon,real(entry[12]),xx,yy+1);
		}
	}
	else if leaderboardType == LEADERBOARD.VANFAN
	{
		for (var i = 0; i < al; i++)
		{
			var yy = y + (space * i);
			var entry = leaderboard[i];
			draw_text_ext(x,yy,string((page*10) + i + 1) + ".",10,14);
			var xx = x + 30;
			var surf = surface_create(128,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var ux = 0;
			var uw = string_width(entry[1]);
			if (uw > 128)
			{
				//scrolling
				ux = lerp(0,0-max(0,uw-128),killScroll);
			}
			draw_text(ux,0,entry[1]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
			surface_free(surf);
		
			xx += 128;
			draw_sprite(sprTime,0,xx,yy+5);
			xx += 14;
			var surf = surface_create(118,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var kx = 0;
			var kw = string_width(entry[0]);
			if (kw > 118)
			{
				//scrolling	
				kx = lerp(0,0-max(0,kw-118),killScroll);
			}
			draw_text(kx,0,entry[0]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
			surface_free(surf);
			xx += 127;
			
			draw_sprite(scrLeaderboardRace(entry[2],entry[3],false,9),0,xx,yy+3);
			if (entry[2] == 24)
			{
				if entry[3] == 2
				{
					draw_sprite_ext(sprMutant24CIdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
				else if entry[3] == 1
				{
					draw_sprite_ext(sprMutant24BIdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
				else
				{
					draw_sprite_ext(sprMutant24IdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
			}
			xx += 9;
		}	
	}
	else
	{
		//RACE
		for (var i = 0; i < al; i++)
		{
			var yy = y + (space * i);
			var entry = leaderboard[i];
			draw_text_ext(x,yy,string((page*10) + i + 1) + ".",10,14);
			var xx = x + 30;
			var surf = surface_create(64,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var ux = 0;
			var uw = string_width(entry[1]);
			if (uw > 64)
			{
				//scrolling	
				ux = lerp(0,0-max(0,uw-64),killScroll);
			}
			draw_text(ux,0,entry[1]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
		
			xx += 66;
			draw_sprite(sprTime,0,xx,yy+5);
			xx += 14;
			var surf = surface_create(88,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var kx = 0;
			var kw = string_width(entry[0]);
			if (kw > 88)
			{
				//scrolling	
				kx = lerp(0,0-max(0,kw-88),killScroll);
			}
			draw_text(kx,0,entry[0]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
			surface_free(surf);
			xx += 96;
			
			draw_sprite(scrLeaderboardRace(entry[3],entry[4],bool(entry[5]),9),0,xx,yy+3);
			if (entry[3] == 24)
			{
				if entry[4] == 2
				{
					draw_sprite_ext(sprMutant24CIdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
				else if entry[4] == 1
				{
					draw_sprite_ext(sprMutant24BIdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
				else
				{
					draw_sprite_ext(sprMutant24IdleHead,0,xx,yy+3,1,1,0,ElementorHead.col,1);
				}
			}
			xx += 12;
			
			var aal = array_length(entry[2])
			var areaArray = entry[2];
			var tx = 0;
			var surf = surface_create(123,string_height(entry[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black,0.0);
			var tw = 0;
			for (var ti = 0; ti < aal; ti++)
			{
				tw += string_width(areaArray[ti][0]);
			}
			if (tw > 122)
			{
				//scrolling	
				tx = lerp(0,0-max(0,tw-122),killScroll);
			}
			for (var ai = 0; ai < aal; ai++)
			{
				if areaArray[ai][1]//Upside down
				{
					draw_set_valign(fa_bottom);
					//draw_set_halign(fa_right);
					draw_text_transformed(tx,-1,areaArray[ai][0],1,-1,0);
				}
				else
				{
					draw_text(tx,0,areaArray[ai][0]);
				}
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				tx += string_width(areaArray[ai][0]);
			}
			surface_reset_target();
			draw_surface(surf,xx,yy);
			surface_free(surf);
			
			xx += 133;
			scrDrawLeaderboardWeapon(entry,6,xx,yy);
			xx += 40;
			if (entry[9] != [1])
			{
				scrDrawLeaderboardCrown(scrStringArrayToNumbersArray(entry[9]),xx,yy);
			}
			xx += 15;
			scrDrawLeaderboardUltra(xx,yy,entry,3,4,5,11);
			xx += 32;
			draw_sprite(sprUltraModIcon,real(entry[10]),xx,yy+1);
		}
	}
	var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 16;
	//Can do next
	var o = 8;
	if totalPages > page
	{
		var s = 1;
		var ax = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-o;
		var ay = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				page ++;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,270,c_white,1);
		
	}
	if (!viewingWeekly && UberCont.dailyDay < UberCont.totalDailies) ||
	 (viewingWeekly && UberCont.weeklyWeek < UberCont.totalWeeklies)
	{
		var s = 1;
		var ax = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-o;
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				if viewingWeekly
					UberCont.weeklyWeek ++;
				else
				{
					UberCont.dailyDay ++;
					scrItteratePotentialRaceGamemodeLeaderboard();
				}
					
				page = 0;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,270,c_white,1);
		
	}
	if page > 0
	{
		var s = 1;
		var ax = o
		var ay = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				page --;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,90,c_white,1);
	}
	if (!viewingWeekly && UberCont.dailyDay > 0) ||
	 (viewingWeekly && UberCont.weeklyWeek > 0)
	{
		var s = 1;
		var ax = o
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				if viewingWeekly
					UberCont.weeklyWeek --;
				else
				{
					UberCont.dailyDay --;
					scrItteratePotentialRaceGamemodeLeaderboard();
				}
				
				page = 0;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,90,c_white,1);
	}
	//Toggle daily / race
	var s = 1;
	var ax = o + string_width("WEEKLY 2023 88  ");
	var ay = camera_get_view_y(view_camera[0]) + o;
	if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
	{
		s = 1.25;
		if mouse_check_button_pressed(mb_left) {
			UberCont.weeklyWeek = UberCont.totalWeeklies;
			UberCont.dailyDay = UberCont.totalDailies;
			//Just get leaderboard
			if viewingWeekly
			{
				leaderboardType = LEADERBOARD.SCORE;
				viewingWeekly = false;
			}
			else if leaderboardType == LEADERBOARD.RACE || UberCont.viewDailyGamemode
			{
				leaderboardType = LEADERBOARD.WEEKLY;
				UberCont.viewDailyGamemode = false;
			}
			else
			{
				leaderboardType = LEADERBOARD.RACE;
				viewingWeekly = false;
				if (UberCont.dailyDay % 2 == 0)
				{
					leaderboardType = LEADERBOARD.WEEKLY;
					UberCont.viewDailyGamemode = true;
				}
				else 
				{
					UberCont.viewDailyGamemode = false
				}
			}
			page = 0;
			event_user(0);
			leaderboard = [];
		}
	}
	draw_sprite_ext(sprMenuArrowSmall,0,
	ax,
	ay,
	s,s,0,c_white,1);
}
else if noBoard
{
	draw_text(x + 16,y-16,leaderboardName[0]);
	var surf = surface_create(174,string_height(leaderboardName[1]));
	surface_set_target(surf);
	draw_clear_alpha(c_black,0.0);
	var ux = 0;
	var uw = string_width(leaderboardName[1]);
	if (uw > 174)
	{
		//scrolling	
		ux = lerp(0,0-max(0,uw-174),killScroll);
	}
	draw_text(ux,0,leaderboardName[1]);
	surface_reset_target();
	draw_surface(surf,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 16 - min(string_width(leaderboardName[1]),174), y-16);
	surface_free(surf);
	
	draw_set_halign(fa_left);
	draw_text(x + 31,y,"NO LEADERBOARD ENTRY");
	var o = 8;
	if (!viewingWeekly && UberCont.dailyDay < UberCont.totalDailies) ||
	 (viewingWeekly && UberCont.weeklyWeek < UberCont.totalWeeklies)
	{
		var s = 1;
		var ax = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-o;
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				if viewingWeekly
					UberCont.weeklyWeek ++;
				else
				{
					UberCont.dailyDay ++;
					scrItteratePotentialRaceGamemodeLeaderboard();
				}
					
				page = 0;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,270,c_white,1);
		
	}
	if (!viewingWeekly && UberCont.dailyDay > 0) ||
		(viewingWeekly && UberCont.weeklyWeek > 0)
	{
		var s = 1;
		var ax = o
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				if viewingWeekly
					UberCont.weeklyWeek --;
				else
				{
					UberCont.dailyDay --;
					scrItteratePotentialRaceGamemodeLeaderboard();
				}
					
				page = 0;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,90,c_white,1);
	}
	//Toggle daily / race
	var s = 1;
	var ax = o + string_width("WEEKLY 2023 88  ");
	var ay = camera_get_view_y(view_camera[0]) + o;
	if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
	{
		s = 1.25;
		if mouse_check_button_pressed(mb_left) {
			UberCont.weeklyWeek = UberCont.totalWeeklies;
			UberCont.dailyDay = UberCont.totalDailies;
			//Just get leaderboard
			if viewingWeekly
			{
				viewingWeekly = false;
				leaderboardType = LEADERBOARD.SCORE;
			}
			else if leaderboardType == LEADERBOARD.RACE || UberCont.viewDailyGamemode
			{
				leaderboardType = LEADERBOARD.WEEKLY;
				UberCont.viewDailyGamemode = false;
			}
			else
			{
				leaderboardType = LEADERBOARD.RACE;
				viewingWeekly = false;
				if (UberCont.dailyDay % 2 == 0)
				{
					leaderboardType = LEADERBOARD.WEEKLY;
					UberCont.viewDailyGamemode = true;
				}
				else
				{
					UberCont.viewDailyGamemode = false
				}
			}
			page = 0;
			event_user(0);
			leaderboard = [];
		}
	}
	draw_sprite_ext(sprMenuArrowSmall,0,
	ax,
	ay,
	s,s,0,c_white,1);
}
else
{
	draw_sprite(sprite_index,image_index,
	round(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5)),
	round(camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5)));
}
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 8;
draw_set_halign(fa_center);
draw_text(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),
yy,
string(page+1) + " / " + string(totalPages+1)
);
draw_set_halign(fa_left);
if alarm[1] < 1
	draw_text(x+24,yy,"[RMB] EXIT");
