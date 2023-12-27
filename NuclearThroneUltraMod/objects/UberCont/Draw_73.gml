/// @description Timer
var formatString = "0:00:00:00";
if confirmState == 3
{
	var yy = __view_get( e__VW.YView, 0 );
	draw_set_color(c_black)
	draw_set_blend_mode(bm_normal)
	draw_set_alpha(0.6)
	draw_rectangle(__view_get( e__VW.XView, 0 ),yy,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),yy+__view_get( e__VW.HView, 0 ),0)
	draw_set_alpha(1)
	draw_rectangle(__view_get( e__VW.XView, 0 ),yy,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),yy+48,0)
	draw_rectangle(__view_get( e__VW.XView, 0 ),yy+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),yy+__view_get( e__VW.HView, 0 )-48,0)
	var xxx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5);
	var yyy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5) + 32;
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_font(fntB);
	draw_set_color(c_black)
	draw_text(xxx+1,yyy,"ARE       YOU       SURE\nYOU       WANT       TO\nQUIT");
	draw_text(xxx+1,yyy+1,"ARE       YOU       SURE\nYOU       WANT       TO\nQUIT");
	draw_text(xxx,yyy+1,"ARE       YOU       SURE\nYOU       WANT       TO\nQUIT");
	draw_set_color(c_silver)
	draw_text(xxx,yyy,"ARE       YOU       SURE\nYOU       WANT       TO\n ");
	draw_set_color(c_white)
	draw_text(xxx,yyy,"QUIT       THE       GAME?");
	draw_set_font(fntM);
	draw_sprite_ext(sprLMBIcon,0,xxx - 36,yyy+12,1,1,0,c_white,1);
	draw_set_valign(fa_middle);
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
}
else if !isPaused && !instance_exists(Player) && !instance_exists(PlayerSpawn) && !instance_exists(ShopWheel)
{
	txttime = finalTime;
}
else
{
	var ts = string(floor(time_microseconds))
	microseconds=ts
	if time_microseconds<10
	{microseconds="0"+ts;}

	secondsstring=string(time_seconds)
	if time_seconds<10
	{secondsstring="0"+string(time_seconds);}

	minutesstring=string(time_minutes)
	if time_minutes<10
	{minutesstring="0"+string(time_minutes);}
	var formatString = "0:00:00:00";
	if time_hours >= 1
	{
		formatString = "0:00:00:00";
		if time_hours >= 10
		{
			formatString = "00:00:00:00";
			if time_hours >= 100
			{
				formatString = "000:00:00:00";
			}
		}
		txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;
	}
	else
	{
		txttime = minutesstring+":"+secondsstring+":"+microseconds;
	}
}
if confirmState != 3 && !instance_exists(Menu) && !instance_exists(Vlambeer) && !instance_exists(UnlockPopup) && opt_timer && !instance_exists(Leaderboard)
{
draw_set_valign(fa_top)
draw_set_halign(fa_center)
var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline(txttime));
if isPaused
	yy -= 8;
draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline(formatString))*0.5+1,yy,string_hash_to_newline(txttime),c_black
,c_black,c_black,c_black,1);
draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline(formatString))*0.5,yy,string_hash_to_newline(txttime),c_black
,c_black,c_black,c_black,1);
draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline(formatString))*0.5,yy-1,string_hash_to_newline(txttime),c_white
,c_white,c_white,c_white,1);


}
