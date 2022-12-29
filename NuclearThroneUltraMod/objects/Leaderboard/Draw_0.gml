/// @description Draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
if !connectionSuccess {
	draw_text(x + 16,y-16,"CONNECTION FAILED");
}
else if array_length(leaderboard) > 0
{
	var space = 22;
	draw_text(x + 16,y-16,leaderboardName[0]);
	draw_set_halign(fa_right);
	draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 16,y-16,leaderboardName[1]);
	draw_set_halign(fa_left);
	var al = array_length(leaderboard);
	if leaderboardType == LEADERBOARD.SCORE
		for (var i = 0; i < al; i++)
		{
			var yy = y + (space * i);
			var entry = leaderboard[i];
			draw_text_ext(x,yy,string((page*10) + i + 1) + ".",10,14);
			var xx = x + 31;
			var surf = surface_create(64,string_height(entry[0]));
			surface_set_target(surf);
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
		
			xx += 64;
			draw_sprite(sprKills,0,xx,yy+5);
			var surf = surface_create(55,string_height(entry[0]));
			surface_set_target(surf);
			var kx = 0;
			var kw = string_width(entry[0]);
			if (kw > 55)
			{
				//scrolling	
				kx = lerp(0,0-max(0,kw-55),killScroll);
			}
			draw_text(kx,0,entry[0]);
			surface_reset_target();
			xx += 14;
			draw_surface(surf,xx,yy);
			xx += 64;
			draw_sprite(scrLeaderboardRace(entry[5],entry[6],entry[7],entry[2]),0,xx,yy+3);
			xx += 11;
			var area = scrAreaName(real(entry[2]),real(entry[3]),0);
			if entry[4] != "0"
			{
				if area[1] {
					draw_set_valign(fa_bottom);
					draw_set_halign(fa_right);
					draw_text_ext_transformed(xx,yy-8,area[0],10,44,-1,-1,0);
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
			xx += 44;
			//5 = race Enter logic to determine skin
			// 6 = bskin
			//7 = altultra
		
			if (real(entry[10]) != 0)//Three weapons
			{
				draw_sprite(wep_sprt[real(entry[8])],0,xx,yy-3);
				xx += 30;
				draw_sprite(wep_sprt[real(entry[9])],0,xx,yy-3);
				draw_sprite(wep_sprt[real(entry[10])],0,xx-14,yy+6);
			}
			else
			{
				draw_sprite(wep_sprt[real(entry[8])],0,xx,yy);
				xx += 30;
				draw_sprite(wep_sprt[real(entry[9])],0,xx,yy);
			}
			xx += 30;
			if (entry[11] != "1")
				draw_sprite(scrLeaderboardCrown(real(entry[11])),0,xx,yy);
			xx += 8;
			if entry[12] != "255"
			{
				var race = real(entry[5]);
				var bskin = real(entry[6]);
				var altUltra = bool(entry[7]);
				if altUltra {
					//alt Ultras
					var ultraSpr = scrLeaderboardAltUltra(real(entry[12]));
					if ultraSpr != -1
						draw_sprite(ultraSpr,0,xx,yy-8);
					else
						draw_sprite(sprUltraIconHUD,real(entry[12]),xx,yy-8);
				}
				else
				{
					//Hands skins
					//fish skin
					if race == 1 && bskin == 2
					{	
						draw_sprite(sprFishCanGunHUD,0,xx,yy-8);
					}
					else if race == 27//race
					{
						if bskin == 1//bskin
							draw_sprite(sprHothandsHUD,0,xx,yy-8);
						else if bskin == 2
							draw_sprite(sprExplosiveHandsHUD,0,xx,yy-8);
						else
							draw_sprite(sprUltraIconHUD,real(entry[12]),xx,yy-8);
					}
					else
					{
						draw_sprite(sprUltraIconHUD,real(entry[12]),xx,yy-8);
					}
				}
			}
		}
	else
		for (var i = 0; i < al; i++)
		{
			var yy = y + (space * i);
			var entry = leaderboard[i];
			draw_text_ext(x,yy,string((page*10) + i + 1) + ".",10,14);
			var xx = x + 30;
			var surf = surface_create(48,string_height(entry[0]));
			surface_set_target(surf);
			var ux = 0;
			var uw = string_width(entry[1]);
			if (uw > 48)
			{
				//scrolling	
				ux = lerp(0,0-max(0,uw-64),killScroll);
			}
			draw_text(ux,0,entry[1]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
		
			xx += 47;
			draw_sprite(sprTime,0,xx,yy+5);
			xx += 14;
			var surf = surface_create(64,string_height(entry[0]));
			surface_set_target(surf);
			var kx = 0;
			var kw = string_width(entry[0]);
			if (kw > 64)
			{
				//scrolling	
				kx = lerp(0,0-max(0,kw-64),killScroll);
			}
			draw_text(kx,0,entry[0]);
			surface_reset_target();
			draw_surface(surf,xx,yy);
			xx += 73;
			
			draw_sprite(scrLeaderboardRace(entry[3],entry[4],bool(entry[5]),9),0,xx,yy+3);
			xx += 9;
			
			var aal = array_length(entry[2])
			var areaArray = entry[2];
			var tx = 0;
			var surf = surface_create(55,string_height(entry[0]));
			surface_set_target(surf);
			var tw = 0;
			for (var ti = 0; ti < aal; ti++)
			{
				tw += string_width(areaArray[ti][0]);
			}
			if (tw > 55)
			{
				//scrolling	
				tx = lerp(0,0-max(0,tw-55),killScroll);
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
			
			xx += 60;
			if (real(entry[8]) != 0)//Three weapons
			{
				draw_sprite(wep_sprt[real(entry[6])],0,xx,yy-3);
				xx += 28;
				draw_sprite(wep_sprt[real(entry[7])],0,xx,yy-3);
				draw_sprite(wep_sprt[real(entry[8])],0,xx-14,yy+6);
			}
			else
			{
				draw_sprite(wep_sprt[real(entry[6])],0,xx,yy);
				xx += 28;
				draw_sprite(wep_sprt[real(entry[7])],0,xx,yy);
			}
			xx += 31;
			if (entry[9] != "1")
				draw_sprite(scrLeaderboardCrown(real(entry[9])),0,xx,yy);
			xx += 8;
			if entry[10] != "255"
			{
				var race = real(entry[5]);
				var bskin = real(entry[6]);
				var altUltra = bool(entry[7]);
				if altUltra {
					//alt Ultras
					var ultraSpr = scrLeaderboardAltUltra(real(entry[5]));
					if ultraSpr != -1
						draw_sprite(ultraSpr,0,xx,yy-8);
					else
						draw_sprite(sprUltraIconHUD,real(entry[5]),xx,yy-8);
				}
				else
				{
					//Hands skins
					//fish skin
					if race == 1 && bskin == 2
					{	
						draw_sprite(sprFishCanGunHUD,0,xx,yy-8);
					}
					else if race == 27//race
					{
						if bskin == 1//bskin
							draw_sprite(sprHothandsHUD,0,xx,yy-8);
						else if bskin == 2
							draw_sprite(sprExplosiveHandsHUD,0,xx,yy-8);
						else
							draw_sprite(sprUltraIconHUD,real(entry[5]),xx,yy-8);
					}
					else
					{
						draw_sprite(sprUltraIconHUD,real(entry[5]),xx,yy-8);
					}
				}
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
	if UberCont.dailyDay < UberCont.totalDailies
	{
		var s = 1;
		var ax = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-o;
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				UberCont.dailyDay ++;
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
	if UberCont.dailyDay > 1
	{
		var s = 1;
		var ax = o
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				UberCont.dailyDay --;
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
	var ax = o + string_width("DAILY SCORE  ");
	var ay = camera_get_view_y(view_camera[0]) + o;
	if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
	{
		s = 1.25;
		if mouse_check_button_pressed(mb_left) {
			//Just get leaderboard
			if leaderboardType == LEADERBOARD.RACE
				leaderboardType = LEADERBOARD.SCORE;
			else
				leaderboardType = LEADERBOARD.RACE;
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
	draw_set_halign(fa_right);
	draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 16,y-16,leaderboardName[1]);
	draw_set_halign(fa_left);
	draw_text(x + 31,y,"NO LEADERBOARD ENTRY");
	var o = 8;
	if UberCont.dailyDay < UberCont.totalDailies
	{
		var s = 1;
		var ax = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-o;
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				UberCont.dailyDay ++;
				event_user(0);
				leaderboard = [];
			}
		}
		draw_sprite_ext(sprMenuArrowSmall,0,
		ax,
		ay,
		s,s,270,c_white,1);
		
	}
	if UberCont.dailyDay > 0
	{
		var s = 1;
		var ax = o
		var ay = camera_get_view_y(view_camera[0]) + o;
		if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
		{
			s = 1.25;
			if mouse_check_button_pressed(mb_left) {
				//Just get leaderboard
				UberCont.dailyDay --;
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
	var ax = o + string_width("DAILY SCORE  ");
	var ay = camera_get_view_y(view_camera[0]) + o;
	if mouse_x > ax - o && mouse_x < ax + o && mouse_y > ay - o && mouse_y < ay + o
	{
		s = 1.25;
		if mouse_check_button_pressed(mb_left) {
			//Just get leaderboard
			if leaderboardType == LEADERBOARD.RACE
				leaderboardType = LEADERBOARD.SCORE;
			else
				leaderboardType = LEADERBOARD.RACE;
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
	camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),
	camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5));
}
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 8;
draw_set_halign(fa_middle);
draw_text(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),
yy,
string(page+1) + " / " + string(totalPages+1)
);
draw_set_halign(fa_left);
if alarm[1] < 1
	draw_text(x+24,yy,"[RMB] EXIT");
