/// @description Pause delay of one frame
//pauseimg = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0);
instance_deactivate_all(1)
scrActivateImportant();
if !instance_exists(SaveRunMenu)
{
	optY = 24;
	var xx = 10;
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+32+optY,MusVolSlider)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+40+optY,SfxVolSlider)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+48+optY,AmbVolSlider)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+56+optY,ThreeDAudioToggle)

	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xx+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+80+optY,FullScreenToggle)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xx+string_width(string_hash_to_newline("00")),__view_get( e__VW.YView, 0 )+80+optY,CursorUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xx+string_width(string_hash_to_newline("0")),__view_get( e__VW.YView, 0 )+96+optY,SideArtUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xx+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+104+optY,DamageIndicatorToggle)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xx+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+112+optY,CameraFollowToggle)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+xx+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+120+optY,HighQualityToggle)
	//instance_create(view_xview+view_wview/2+10+string_width("OFF"),view_yview+136,GamePadToggle)
	//instance_create(view_xview+view_wview/2+10+string_width("100%"),view_yview+144,AutoAimUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+166+optY,ShakeUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+174+optY,FreezeFrameUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("16X")),__view_get( e__VW.YView, 0 )+182+optY,ResolutionScaleUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+190+optY,LoadingScreenSpeedUpDown)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+198+optY,MouseCPToggle)
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+206+optY,BossIntroToggle);
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+214+optY,TimerToggle);
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+222+optY,FPSToggle);
	alarm[4] = 1;
}
audio_pause_all();