recursionCheck = 0;
steam_update();
if isPaused == 1
{
//QUICK RESTART
if (canRestart && isPaused == 1 && !instance_exists(PlayerSpawn) && !instance_exists(Player) && (keyboard_check_pressed(ord("R")) || gamepad_button_check(0,gp_face3)) )//(gamepad_button_check(0,gp_stickl) && gamepad_button_check(0,gp_stickr)) )
{
	debug("QUICK RESTART");
	//scrEndOfRun(); already run in player destroy
	with FPSHACKMenu
		instance_destroy();
	instance_activate_all();
	if normalGameSpeed = 30
		with FPSHACK
			instance_destroy();
	else if !instance_exists(FPSHACK)
	{
		instance_create(x,y,FPSHACK);	
	}
	alarm[2] = 1;//Some objects are only accessible after a frame
	//audio_stop_all();
	alarm[4] = 0;
	alarm[5] = 0;
	isPaused = 0
	alarm[3] = 1;
	with Player
	{
		other.kills = kills;
		other.hard = hard;
		skeletonlives = 0;
		ultra_got[87] = 0;
		instance_destroy()
	}
	if (scrIsGamemode(42))
	{
		if !scrIsGamemode(25)
			opt_gamemode[array_length(opt_gamemode)] = 25;
	}
	snd_play(sndMutant0Cnfm, 0, false, false)
	race = UberCont.racepick
	crown = [1]
	//scrRaces()
	//scrCrowns()
	var ranChar = false;
	if race = 0 || scrIsGamemode(23)
	{
		ranChar = true;
		do {race = 1+irandom(racemax-1);} until race_have[race] = 1
	}
	//if crown = 0
	//crown = ceil(irandom(crownmax))
	with WepPickup
		instance_destroy();
	with ThrowWep
		instance_destroy();
	with HardModeChest
		instance_destroy();
	with CrownIcon
		instance_destroy();
	with PlayerSpawn
		instance_destroy();
	with SurvivalWave
		instance_destroy();
	with instance_create(x,y,GenCont)
	{race = other.race
	crown = other.crown}
	instance_create(x,y,Player)
	with Player
	{
		randomlySelected = ranChar;
		restarted = true;
		nochest = -1;
		skeletonlives = 0;
	}
	var loadedRun = UberCont.loadedRun;
	if loadedRun
		scrLoadRun();
	else if !instance_exists(StartDaily)
		room_restart()
	exit;
}
instance_activate_object(KeyCont)
with KeyCont{
scrKeyContStep()}
//RETURN TO GAME
if instance_exists(KeyCont) && (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("P")) or keyboard_check_pressed(vk_f1) or mouse_check_button_pressed(mb_right) or KeyCont.key_back[0] = 1
or gamepad_button_check(0,gp_face2) or gamepad_button_check(0,gp_start) or gamepad_button_check(0,gp_select))
{
with option
instance_destroy()

with FPSHACKMenu
	instance_destroy();
instance_activate_all()
if normalGameSpeed = 30
	with FPSHACK
		instance_destroy();
else if !instance_exists(FPSHACK)
{
	instance_create(x,y,FPSHACK);	
}
//with TopCont
//bloomAlpha=UberCont.opt_bloom;
/*
if(instance_exists(Marker)){
Cursor.image_index=UberCont.opt_crosshair;
}else{
Cursor.image_index=UberCont.opt_crosshair;}
*/
isPaused = 0
alarm[4] = 0;
alarm[5] = 0;
alarm[3] = 1;
audio_resume_all();
}
//RETURN TO MENU
if (keyboard_check_pressed(vk_enter) or gamepad_button_check(0,gp_face4)) && !instance_exists(PlayerSpawn) && !instance_exists(StartDaily)
{
	if isWeekly
		opt_gamemode = [0];
	
	with FPSHACKMenu
		instance_destroy();
	instance_activate_all()
	if normalGameSpeed = 30
		with FPSHACK
			instance_destroy();
	else if !instance_exists(FPSHACK)
	{
		instance_create(x,y,FPSHACK);	
	}
	isPaused = 0
	alarm[4] = 0;
	alarm[5] = 0;
	alarm[3] = 1;
	//audio_stop_all();
	if instance_exists(Player)
	kills=Player.kills
	with Player
	{
		skeletonlives = 0;
		ultra_got[87] = 0;
		instance_destroy()
	}
	scrSave();
	scrRestart()
	debug("RETURN TO MENU PAUSED");
}
//QUIT
if ( keyboard_check_pressed(ord("Q")) or ( gamepad_button_check(0,gp_shoulderr) && gamepad_button_check(0,gp_shoulderrb) 
&& gamepad_button_check(0,gp_shoulderl) && gamepad_button_check(0,gp_shoulderlb) ) )
{
	if (UberCont.isWeekly)
	{
		UberCont.opt_gamemode = [0];	
	}
	scrSave();
	steam_shutdown();
	game_end()
}
}
else
{

//NOT PAUSED

if instance_exists(KeyCont) && !instance_exists(StartDaily) && (keyboard_check_pressed(vk_escape)or KeyCont.key_paus[0] = 1 || (!instance_exists(Vlambeer)&&(!window_has_focus()) && public == 1) ) and !instance_exists(GenCont)
{
	if keyboard_check_pressed(vk_escape) and instance_exists(Menu)
	{
		if isWeekly
			opt_gamemode = [0];
		scrSave();
		if !instance_exists(OptionSelect)
		{
			steam_shutdown();
			game_end()
		}
		else if OptionSelect.selected = 0 and CreditsSelect.selected = 0 and StatsSelect.selected = 0 and OptionSelect2.selected = 0 and UpdateSelect.selected = 0
		{
			steam_shutdown();
			game_end()
		}
		else if !instance_exists(PlayerSpawn) && !instance_exists(Player) && !instance_exists(StartDaily)
		{
			scrRestart()
		}
	}
	else if instance_exists(Vlambeer)
		game_end()
else if instance_exists(Player) && !instance_exists(StartDaily)///PAUSE IN-GAME
{
kills=Player.kills
hard=Player.hard;
pauseimg = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0)
//cursor_sprite=sprCrosshair
//with Cursor
//instance_destroy();
/*
with FPSHACK
{
	var al = ds_list_size(forcePositions)
	for (var i = 0; i < al; i++)
	{
		instance_activate_object(forcePositions[| i]);
	}
}*/

instance_deactivate_all(1)
instance_activate_object(UnlockPopup);
if instance_exists(FPSHACK)
	instance_create(x,y,FPSHACKMenu);
//instance_activate_object(FPSHACKMenu);
//instance_activate_object(BackCont);
instance_activate_object(MusCont);

//instance_activate_object(FPSHACK);
//instance_activate_object(TopCont);//hmm?
instance_activate_object(Cursor);
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
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+174+optY,ShakeUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+182+optY,FreezeFrameUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+190+optY,LoadingScreenSpeedUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+198+optY,MouseCPToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+206+optY,BossIntroToggle);
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+214+optY,TimerToggle);
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+x+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+222+optY,FPSToggle);

isPaused = 1
alarm[4] = 1;
audio_pause_all();
}
}
}

///Timer

if isPaused == 0 && !instance_exists(GenCont) && !instance_exists(Menu) && !instance_exists(Vlambeer) &&
(instance_exists(Player) || instance_exists(PlayerSpawn)) && !instance_exists(PauseTimer) && !instance_exists(StartDaily)
{
	if normalGameSpeed == 60
	{
		time_frame += 0.5;
		time_microseconds += 1.6666666666666666666666666666667;//Counts to 100
	}
	else
	{
		time_frame ++;
		time_microseconds+=3.3333333333333333333333333333333;//Counts to 100
	}

	if time_microseconds>=100
	{
		time_seconds+=1;
		time_microseconds=0;
	}

	if time_seconds>=60
	{
		time_minutes+=1;
		time_seconds=0;
	}

	if time_minutes>=60
	{
		time_hours+=1;
		time_minutes=0;
	}
}

with option
	y+=other.optY;
	

