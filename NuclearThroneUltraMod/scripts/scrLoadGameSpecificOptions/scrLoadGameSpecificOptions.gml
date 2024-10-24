function scrLoadGameSpecificOptions() {
	//Read array!??
	var al = ini_read_real("OPTIONS","gamemodes",1);
	opt_default_gm = ini_read_real("OPTIONS","opt_default_gm",9);
	opt_gamemode = [opt_default_gm];
	if al < 1
		opt_gamemode = [opt_default_gm];
	for (var i = 0; i < al; i ++)
	{
		opt_gamemode[i] = ini_read_real("OPTIONS","gamemode"+string(i),opt_default_gm);
	}
	var favourite = 0;
	if opt_default_gm == 0
		favourite = 9;
	opt_favourite_gamemode = [favourite];
	var al = ini_read_real("OPTIONS","opt_favourite_gamemode",1);
	if al < 1
		opt_favourite_gamemode = [favourite];
	for (var i = 0; i < al; i ++)
	{
		opt_favourite_gamemode[i] = ini_read_real("OPTIONS","opt_favourite_gamemode"+string(i),0);
	}
	if scrIsGamemode(38)
	{
		useSeed = true;
	}
	opt_custom_survival = ini_read_string("OPTIONS","customsurvival","custom_survival_wave_template");
	opt_gm1wep = ini_read_real("OPTIONS","opt_gm1wep",1);
	//opt_gm_char = ini_read_real("OPTIONS","opt_gm_char",1);
	opt_gm_char_active = ini_read_real("OPTIONS","opt_gm_char_active",1);
}
