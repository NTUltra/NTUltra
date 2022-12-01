/// @description Draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
if array_length(leaderboard) > 0
{
	var space = 21;
	draw_text(x,y-16,leaderboardName);
	var al = array_length(leaderboard);
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
		
		//draw_text_ext(xx,yy,entry[1],1,64);//Username
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
		draw_sprite(scrLeaderboardRace(entry),0,xx,yy+2);
		xx += 11;
		var area = entry[2]+"-"+ entry[3];
		if entry[4] != "0"
		{
			draw_text_ext(xx,yy-4,area,10,50);
			area = "L"+entry[4];
			draw_text_ext(xx,yy+4,area,10,50);
		}
		else
		{
			draw_text_ext(xx,yy,area,10,50);
		}
		xx += 40;
		//5 = race Enter logic to determine skin
		// 6 = bskin
		//7 = altultra
		
		if (real(entry[10]) != 0)//Three weapons
		{
			draw_sprite(wep_sprt[real(entry[8])],0,xx,yy-4);
			xx += 29;
			draw_sprite(wep_sprt[real(entry[9])],0,xx,yy-4);
			draw_sprite(wep_sprt[real(entry[10])],0,xx-14,yy+5);
		}
		else
		{
			draw_sprite(wep_sprt[real(entry[8])],0,xx,yy);
			xx += 29;
			draw_sprite(wep_sprt[real(entry[9])],0,xx,yy);
		}
		xx += 29;
		if (entry[11] != "1")
			draw_sprite(scrLeaderboardCrown(real(entry[11])),0,xx,yy);
		xx += 8;
		if entry[12] != "255"
		{
			draw_sprite(sprUltraIconHUD,real(entry[12]),xx,yy-8);
		}
	}
	var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 16;
	//Can do next
	var o = 12;
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
		draw_sprite_ext(sprLoadOutArrow,0,
		ax,
		ay,
		s,s,270,c_white,1);
		
	}
	draw_set_halign(fa_middle);
	draw_text(camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),
	camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 16,
	string(page+1) + " / " + string(totalPages+1)
	);
	draw_set_halign(fa_left);
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
		draw_sprite_ext(sprLoadOutArrow,0,
		ax,
		ay,
		s,s,90,c_white,1);
	}
}
else
{
	draw_sprite(sprite_index,image_index,
	camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),
	camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5));
}
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 16;
draw_text(x+24,yy,"[RMB] EXIT");
