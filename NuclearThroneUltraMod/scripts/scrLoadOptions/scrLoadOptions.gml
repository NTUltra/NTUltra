function scrLoadOptions() {
	//OPTIONS
	//audio
	opt_sfxvol=ini_read_real("OPTIONS","sfxvol",0.8);
	opt_musvol = ini_read_real("OPTIONS","musvol",0.7);
	opt_ambvol = ini_read_real("OPTIONS","ambvol",0.7);
	opt_3d_audio = ini_read_real("OPTIONS","3daudio",1);

	//visual
	opt_fulscrn = ini_read_real("OPTIONS","fulscrn",1);
	opt_crosshair = ini_read_real("OPTIONS","crosshair",0);
	opt_crosshair_scale = ini_read_real("OPTIONS","crosshairscale",16);
	opt_custom_crosshair = ini_read_string("OPTIONS","customcrosshair",0);
	customCrosshair = sprite_add(opt_custom_crosshair,0,false,false,0,0);
	var w = sprite_get_width(customCrosshair);
	var h = sprite_get_height(customCrosshair);
	sprite_set_offset(customCrosshair,w*0.5,h*0.5);
	opt_sideart = ini_read_real("OPTIONS","sideart",0);
	opt_custom_sideart = ini_read_string("OPTIONS","customsideart",0);
	customSideArt = sprite_add(opt_custom_sideart,0,false,false,0,0);
	opt_dmgindicator = ini_read_real("OPTIONS","dmgindicator",0);
	opt_camera_follow = ini_read_real("OPTIONS","camerafollowaim",1);
	opt_hud_des = ini_read_real("OPTIONS","huddes",1);
	//opt_nicedrk = ini_read_real("OPTIONS","nicedrk",0);

	//controls
	//opt_gamepad = ini_read_real("OPTIONS","gamepad",0);
	//opt_autoaim = ini_read_real("OPTIONS","autoaim",1);

	//other
	opt_shake = ini_read_real("OPTIONS","shake",0.5);
	opt_mousecp = ini_read_real("OPTIONS","mousecp",0);
	opt_freeze = ini_read_real("OPTIONS","freeze",0.5);
	opt_loading = ini_read_real("OPTIONS","loading",3.5);
	opt_bossintro = ini_read_real("OPTIONS","bossintro",0);
	opt_timer = ini_read_real("OPTIONS","timer",0);
	opt_gamemode = ini_read_real("OPTIONS","gamemode",0);

	//custom controls (ASCII)
	opt_up = ini_read_real("OPTIONS","up",87);//W
	opt_down = ini_read_real("OPTIONS","down",83);//S
	opt_left = ini_read_real("OPTIONS","left",65);//A
	opt_right = ini_read_real("OPTIONS","right",68);//D
	opt_swap = ini_read_real("OPTIONS","swap",81);//Q
	opt_pickup = ini_read_real("OPTIONS","pickup",69);//E



}
