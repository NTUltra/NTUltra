function scrSaveOptions() {
	//OPTIONS
	//audio
	ini_write_real("OPTIONS","sfxvol",opt_sfxvol);
	ini_write_real("OPTIONS","musvol",opt_musvol);
	ini_write_real("OPTIONS","ambvol",opt_ambvol);
	ini_write_real("OPTIONS","3daudio",opt_3d_audio);

	//visual
	ini_write_real("OPTIONS","fulscrn",opt_fulscrn);
	ini_write_real("OPTIONS","opt_enemy_xray",opt_enemy_xray);
	ini_write_real("OPTIONS","crosshair",opt_crosshair);
	ini_write_real("OPTIONS","crosshairscale",opt_crosshair_scale);
	ini_write_string("OPTIONS","customcrosshair",opt_custom_crosshair);
	ini_write_real("OPTIONS","crosshairColourr",opt_crosshair_colour_r);
	ini_write_real("OPTIONS","crosshairColourg",opt_crosshair_colour_g);
	ini_write_real("OPTIONS","crosshairColourb",opt_crosshair_colour_b);
	ini_write_real("OPTIONS","sideart",opt_sideart);
	ini_write_string("OPTIONS","customsideart",opt_custom_sideart);
	ini_write_real("OPTIONS","dmgindicator",opt_dmgindicator);
	ini_write_real("OPTIONS","camerafollowaim",opt_camera_follow);
	ini_write_real("OPTIONS","huddynamic",opt_hud_dynamic);
	ini_write_real("OPTIONS","huddes",opt_hud_des);
	//ini_write_real("OPTIONS","nicedrk",opt_nicedrk);

	//controls
	//ini_write_real("OPTIONS","gamepad",opt_gamepad);
	//ini_write_real("OPTIONS","autoaim",opt_autoaim);

	//other
	ini_write_real("OPTIONS","shake",opt_shake);
	ini_write_real("OPTIONS","mousecp",opt_mousecp);
	ini_write_real("OPTIONS","freeze",opt_freeze);
	ini_write_real("OPTIONS","loading",opt_loading);
	ini_write_real("OPTIONS","bossintro",opt_bossintro);
	ini_write_real("OPTIONS","timer",opt_timer);
	ini_write_real("OPTIONS","fps",normalGameSpeed);
	ini_write_real("OPTIONS","resolutionscale",opt_resolution_scale);
	if normalGameSpeed < 30
		normalGameSpeed = 30;
	ini_write_real("OPTIONS","show_mutation_details",opt_show_mutation_details);

	//custom controls
	ini_write_real("OPTIONS","up",opt_up);
	ini_write_real("OPTIONS","down",opt_down);
	ini_write_real("OPTIONS","left",opt_left);
	ini_write_real("OPTIONS","right",opt_right);
	ini_write_real("OPTIONS","swap",opt_swap);
	ini_write_real("OPTIONS","pickup",opt_pickup);
	ini_write_real("OPTIONS","regal",opt_regal);

	ini_write_real("OPTIONS","currentSave",currentSave);
}
