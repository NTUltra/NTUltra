function scrDrawOptions() {
	UberCont.optY = 0;
	//DRAW OPTIONS
	if widescreen > 0
	widescreen -= 8

	if UberCont.opt_bossintro=1
	bossintro="ON"
	else
	bossintro="OFF"

	if UberCont.opt_timer=1
	timer="ON"
	else
	timer="OFF"
	var loadspeed = "";
	
	if UberCont.opt_loading == 4
		loadspeed = "MAX#"
	else
		loadspeed = string(scrAddZero(round(UberCont.opt_loading*100),2))+"%#";
	var sideAspect = UberCont.opt_sideart;
	if sideAspect >= sprite_get_number(sprSideArt)
		sideAspect = "";
	else
		sideAspect = string(sideAspect);
	var fpsMode = "#OFF";
	if UberCont.normalGameSpeed == 60
		fpsMode = "#ON";
	
	if !openRemapper
	{
		txt0 = "#OPTIONS###########################PRESS [RIGHT CLICK] TO RETURN"
		txt1 = "###AUDIO#MUSIC VOLUME#SFX VOLUME#AMBIENT VOLUME#3D AUDIO##VISUALS#FULL SCREEN#CROSSHAIR#SIDE-ART/WIDESCREEN#RESOLUTION SCALE#DAMAGE INDICATORS#CAMERA FOLLOW AIM#HUD DESCRIPTION#OTHER#SCREEN SHAKE#FREEZE FRAMES#LOADING SPEED#CAPTURE MOUSE#BOSS INTROS#TIMER#60 FPS [BETA]#DELETE SAVE#REMAP CONTROLS"
		txt2 = "####"+string(scrAddZero(round(UberCont.opt_musvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_sfxvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_ambvol*100),2))
		+"%#"+string(scrOnOff(UberCont.opt_3d_audio))+"###"+string(scrOnOff(UberCont.opt_fulscrn))+"#"+string(UberCont.opt_crosshair+1)+"#"+sideAspect +"#"+
		string(UberCont.opt_resolution_scale) + "X#" +
		string(scrOnOff(UberCont.opt_dmgindicator))+"#"+string(scrOnOff(UberCont.opt_camera_follow))+"#"//
		+string(scrOnOff(UberCont.opt_hud_des))+
		"##"+string(scrAddZero(round(UberCont.opt_shake*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_freeze*100),2))+"%#"+loadspeed+string(scrOnOff(UberCont.opt_mousecp))+"#"+string(bossintro)+"#"+string(timer)+fpsMode+"#HOLD#OPEN"
		
		stxt0 = "#OPTIONS"
		stxt1 = "###AUDIO######VISUALS########OTHER####"
		stxt2 = txt2

		with MusVolSlider
		event_perform(ev_draw,0)
		with SfxVolSlider
		event_perform(ev_draw,0)
		with AmbVolSlider
		event_perform(ev_draw,0)
		with ThreeDAudioToggle
		event_perform(ev_draw,0)

		with FullScreenToggle
		event_perform(ev_draw,0)
		with CursorUpDown
		event_perform(ev_draw,0)
		with SideArtUpDown
		event_perform(ev_draw,0)
		with ResolutionScaleUpDown
		event_perform(ev_draw,0)
		with DamageIndicatorToggle
		event_perform(ev_draw,0)
		with CameraFollowToggle
		event_perform(ev_draw,0)
		with HighQualityToggle
		event_perform(ev_draw,0)
		//with GamePadToggle
		//event_perform(ev_draw,0)
		//with AutoAimUpDown
		//event_perform(ev_draw,0)

		with ShakeUpDown
		event_perform(ev_draw,0)
		with FreezeFrameUpDown
		event_perform(ev_draw,0)
		with MouseCPToggle
		event_perform(ev_draw,0)
		with LoadingScreenSpeedUpDown
		event_perform(ev_draw,0)
		with BossIntroToggle
		event_perform(ev_draw,0)
		with TimerToggle
		event_perform(ev_draw,0)
		with DeleteSave
		event_perform(ev_draw,0)
		with ToggleRemapper
		event_perform(ev_draw,0)
		with FPSToggle
		event_perform(ev_draw,0)
	}
	else
	{
		var up;
		var down;
		var left;
		var right;
		var swap;
		var pickup;
		
		up=scrAsciiChar(UberCont.opt_up);
		down=scrAsciiChar(UberCont.opt_down);
		left=scrAsciiChar(UberCont.opt_left);
		right=scrAsciiChar(UberCont.opt_right);
		swap=scrAsciiChar(UberCont.opt_swap);
		pickup=scrAsciiChar(UberCont.opt_pickup);
		
		txt0 = "#REMAP OPTIONS#CLICK WITH LMB ON SQUARE THEN PRESS KEY##########################PRESS [RIGHT CLICK] TO RETURN";
		txt1 = "####CUSTOMIZE CONTROLS#UP#DOWN#LEFT#RIGHT#SWAP WEAPONS#PICKUP################REMAP CONTROLS"
		txt2 = "#####"+up+"#"+down+"#"+left
		+"#"+right+"#"+swap+"#"+pickup+"################CLOSE";

		stxt0 = "#REMAP OPTIONS##########################";
		stxt1 = "####CUSTOMIZE CONTROLS##### ####### #### ####"
		stxt2 = txt2
		
		with KeyUp
		event_perform(ev_draw,0)
		with KeyDown
		event_perform(ev_draw,0)
		with KeyLeft
		event_perform(ev_draw,0)
		with KeyRight
		event_perform(ev_draw,0)
		with KeySwap
		event_perform(ev_draw,0)
		with KeyPickup
		event_perform(ev_draw,0)
		with KeyReset
		event_perform(ev_draw,0)
		with ToggleRemapper
		event_perform(ev_draw,0)
	}


	

	


	draw_set_valign(fa_top)
	draw_set_halign(fa_center)

	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt0)))


	draw_set_halign(fa_right)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt1)))

	draw_set_halign(fa_left)

	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt2)))




}
