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
	opt_crosshair_colour_r = ini_read_string("OPTIONS","crosshairColourr",255);
	opt_crosshair_colour_g = ini_read_string("OPTIONS","crosshairColourg",255);
	opt_crosshair_colour_b = ini_read_string("OPTIONS","crosshairColourb",255);
	opt_crosshair_colour = make_colour_rgb(opt_crosshair_colour_r,opt_crosshair_colour_g,opt_crosshair_colour_b);
	customCrosshair = sprite_add(opt_custom_crosshair,0,false,false,0,0);
	if (sprite_exists(customCrosshair))
	{
		var w = sprite_get_width(customCrosshair);
		var h = sprite_get_height(customCrosshair);
		sprite_set_offset(customCrosshair,w*0.5,h*0.5);
	}
	opt_sideart = ini_read_real("OPTIONS","sideart",sprite_get_number(sprSideArt) + 1);
	opt_custom_sideart = ini_read_string("OPTIONS","customsideart",0);
	customSideArt = sprite_add(opt_custom_sideart,0,false,false,0,0);
	opt_dmgindicator = ini_read_real("OPTIONS","dmgindicator",1);
	opt_camera_follow = ini_read_real("OPTIONS","camerafollowaim",1);
	opt_hud_des = ini_read_real("OPTIONS","huddes",1);
	//opt_nicedrk = ini_read_real("OPTIONS","nicedrk",0);

	//controls
	//opt_gamepad = ini_read_real("OPTIONS","gamepad",0);
	//opt_autoaim = ini_read_real("OPTIONS","autoaim",1);

	//other
	opt_shake = ini_read_real("OPTIONS","shake",0.5);
	opt_mousecp = ini_read_real("OPTIONS","mousecp",0);
	opt_freeze = ini_read_real("OPTIONS","freeze",0.0);
	opt_loading = ini_read_real("OPTIONS","loading",3.5);
	opt_bossintro = ini_read_real("OPTIONS","bossintro",0);
	opt_timer = ini_read_real("OPTIONS","timer",0);
	normalGameSpeed = ini_read_real("OPTIONS","fps",30);
	opt_resolution_scale = ini_read_real("OPTIONS","resolutionscale",1);
	//Read array!??
	var al = ini_read_real("OPTIONS","gamemodes",1);
	opt_gamemode = [0];
	if al < 1
		opt_gamemode = [0];
	for (var i = 0; i < al; i ++)
	{
		opt_gamemode[i] = ini_read_real("OPTIONS","gamemode"+string(i),0);
	}
	if scrIsGamemode(38)
	{
		useSeed = true;	
	}
	opt_custom_survival = ini_read_string("OPTIONS","customsurvival","custom_survival_wave_template");

	//custom controls (ASCII)
	opt_up = ini_read_real("OPTIONS","up",87);//W
	opt_down = ini_read_real("OPTIONS","down",83);//S
	opt_left = ini_read_real("OPTIONS","left",65);//A
	opt_right = ini_read_real("OPTIONS","right",68);//D
	opt_swap = ini_read_real("OPTIONS","swap",81);//Q
	opt_pickup = ini_read_real("OPTIONS","pickup",69);//E
	

}
