/// @description Draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
if array_length(leaderboard) > 0
{
	var space = 22;
	draw_text(x,y-16,"LEADERBOARD");
	var al = array_length(leaderboard);
	for (var i = 0; i < al; i++)
	{
		var yy = y + (space * i);
		var entry = leaderboard[i];
		draw_text_ext(x,yy,entry[1],1,96);//Username
		var xx = x + 96;
		draw_sprite(sprKills,0,xx,yy);
		draw_text_ext(xx+14,yy,entry[0],1,64);
		var area = entry[2]+"-"+ entry[3];
		if entry[4] != "0"
			area += " L"+entry[4];
		xx += 64;
		draw_text_ext(xx,yy,area,1,32);
		xx += 32;
		//5 = race Enter logic to determine skin
		// 6 = bskin
		//7 = altultra
		draw_sprite(scrLeaderboardRace(entry),0,xx,yy);
		xx += 32;
		draw_sprite(wep_sprt[real(entry[8])],0,xx,yy);
		xx += 48;
		draw_sprite(wep_sprt[real(entry[9])],0,xx,yy);
		xx += 48;
		draw_sprite(wep_sprt[real(entry[10])],0,xx,yy);
		xx += 48;
		if (entry[11] != "1")
		draw_sprite(scrLeaderboardCrown(real(entry[11])),0,xx,yy);
		xx += 32;
		if entry[12] != "255"
			draw_sprite(sprUltraIconHUD,real(entry[12]),xx,yy);
	}
}
else
{
	draw_sprite(sprite_index,image_index,
	camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5),
	camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5));
}
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) - 16;
draw_text(x,yy,"[RMB] EXIT");
//Can do next
var o = 16;
if totalScoreLeaderboardEntries > page*pp
{
	var s = 1;
	draw_sprite_ext(sprLoadOutArrow,0,
	camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-o,
	yy,s,s,90,c_white,1);
}
if page*pp > pp
{
	var s = 1;
	draw_sprite_ext(sprLoadOutArrow,0,
	camera_get_view_x(view_camera[0]) + o,
	yy,s,s,270,c_white,1);
}