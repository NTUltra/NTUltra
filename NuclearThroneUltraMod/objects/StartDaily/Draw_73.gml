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

if scrIsLatestVersion(latestVersion)
{
	if alarm[0] < 1
	draw_text(camera_get_view_x(view_camera[0])+4,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 2,
	"[ESC] CANCEL");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx,yy,string_hash_to_newline("YOU ARE NOT ON THE LATEST VERSION##YOUR VERSION: ["+UberCont.updateVersion+UberCont.subUpdateVersion+"]#LATEST VERSION: ["+latestVersion+
	"]##PLEASE DOWNLOAD THE LATEST UPDATE#ON ITCH.IO [PRESS ENTER]#REPLACE YOUR CURRENT ULTRA MOD FILES#WITH THE NEW VERSION"));
	if keyboard_check_pressed(vk_enter)
	{
		url_open("https://erdeppol.itch.io/nuclear-throne-ultra-mod");	
	}
}
else if (!gotSteam)
{
	if alarm[0] < 1
	draw_text(camera_get_view_x(view_camera[0])+4,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 2,
	"[ESC] CANCEL");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xx,yy,string_hash_to_newline("PLEASE LOG INTO STEAM#AND HAVE STEAM OPEN IN THE BACKGROUND#THEN RESTART THE GAME##[PRESS ENTER] DOWNLOAD STEAM"));
	if keyboard_check_pressed(vk_enter)
	{
		url_open("https://store.steampowered.com/about/");	
	}
}
else if (!scrIsGamemode(26) || UberCont.isLeaderboardGamemode) && alarm[3] > 0
{
	draw_text(camera_get_view_x(view_camera[0])+4,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 2,
	"[LMB] CONTINUE");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var gms = "";
	if UberCont.opt_gamemode[0] != 0
	{
		gms += 	UberCont.gamemode[UberCont.opt_gamemode[0]] + "#";
	}
	if UberCont.opt_gamemode[1] != 0
	{
		gms += 	UberCont.gamemode[UberCont.opt_gamemode[1]] + "#";
	}
	if UberCont.opt_gamemode[2] != 0
	{
		gms += 	UberCont.gamemode[UberCont.opt_gamemode[2]] + "#";
	}
	draw_text(xx,yy,string_hash_to_newline("GAMEMODE:#"+ gms
	));
	if scrIsGamemode(19)
	{
		alarm[3] += 0.1;
		draw_text(xx,yy,string_hash_to_newline("######"+"DISCS: " + string(UberCont.opt_discs) + "#DAMAGE: " + string(UberCont.opt_discdamage)));
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
		draw_sprite(sprLoading,image_index,round(xx),round(yy));
	}
	else
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(xx,yy,"CONNECTION FAILED");
	}
}