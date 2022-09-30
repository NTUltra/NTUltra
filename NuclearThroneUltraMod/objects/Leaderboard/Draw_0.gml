/// @description Draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
if array_length(leaderboard) > 0
{
	draw_text(x,y-16,"LEADERBOARD");
	var space = 16;
	var al = array_length(leaderboard);
	var col = 32;
	for (var i = 0; i < al; i++)
	{
		var yy = y + (space * i);
		var entry = leaderboard[i];
		draw_text_ext(x,yy,entry[1],1,col);//Username
		draw_sprite(sprKills,0,x+col,yy);
		draw_text_ext(x+col+14,yy,entry[0],1,col);
		var area = entry[2]+" - "+ entry[3];
		if entry[4] != "0"
			area += " L"+entry[4];
		draw_text_ext(x+(col*2),yy,area,1,col);
		//5 = race Enter logic to determine skin
		// 6 = bskin
		//7 = altultra
		draw_sprite(sprMutant1Idle,0,x+(col*3),yy);
		draw_sprite(wep_sprt[real(entry[8])],0,x+(col*4),yy);
		draw_sprite(wep_sprt[real(entry[9])],0,x+(col*5),yy);
		draw_sprite(wep_sprt[real(entry[10])],0,x+(col*6),yy);
		draw_sprite(sprCrown1Idle,0,x+(col*7),yy);
		if entry[12] != "255"
			draw_sprite(sprUltraIconHUD,real(entry[12]),x+(col*8),yy);
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