if image_index == 1 and selected = 0 && hasNoMenuOpen()
{
	debug("OPEN GAMEMODE");
	snd_play_2d(sndClick);
with option
	instance_destroy()
selected = 1
/*
var yy = -4;
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy+40,KeyUp)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy+48,KeyDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy+56,KeyLeft)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy+64,KeyRight)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy+72,KeySwap)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy+80,KeyPickup)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+yy+40,KeyReset)
*/
//instance_create(view_xview+view_wview/2,view_yview+96,GameModeUpDown)
var yy = 28;
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+yy,GameModeUpDown)
with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+yy-8,GameModeReset)
	depth = GameModeUpDown.depth;


}
else if StatsSelect.selected = 1 or CreditsSelect.selected = 1 or OptionSelect.selected = 1// or UpdateSelect.selected = 1
{
alarm[0] = 2;
with option2
instance_destroy()
}