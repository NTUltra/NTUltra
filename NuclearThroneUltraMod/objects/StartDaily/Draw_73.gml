/// @description Draw loader
var xx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])*0.5)
var yy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5)
draw_rectangle(camera_get_view_x(view_camera[0]),
camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),
camera_get_view_y(view_camera[0]),
camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
false);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_colour(c_white);
if latestVersion != UberCont.updateVersion
{
	if alarm[0] < 1
	draw_text(camera_get_view_x(view_camera[0])+4,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 2,
	"[ESC] CANCEL");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx,yy,string_hash_to_newline("YOU ARE NOT ON THE LATEST VERSION##YOUR VERSION: ["+UberCont.updateVersion+"]#LATEST VERSION: ["+latestVersion+
	"]##PLEASE DOWNLOAD THE LATEST UPDATE#ON ITCH.IO [PRESS ENTER]#REPLACE YOUR CURRENT ULTRA MOD FILES#WITH THE NEW VERSION"));
	if keyboard_check_pressed(vk_enter)
	{
		url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod");	
	}
}
else if alarm[3] > 0
{
	draw_text(camera_get_view_x(view_camera[0])+4,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 2,
	"[LMB] CONTINUE");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx,yy,string_hash_to_newline("GAMEMODE:#"+UberCont.gamemode[UberCont.opt_gamemode[0]]));
	if scrIsGamemode(19)
	{
		draw_text(xx,yy,string_hash_to_newline("##"+"DISCS: " + UberCont.opt_discs + "#DAMAGE: " + UberCont.opt_discdamage));
	}
}
else
{
	if alarm[0] < 1
	draw_text(camera_get_view_x(view_camera[0])+4,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 2,
	"[ESC] CANCEL");
	if alarm[1] > 0
	{
		draw_sprite(sprLoading,image_index,xx,yy);
	}
	else
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(xx,yy,"CONNECTION FAILED");
	}
}