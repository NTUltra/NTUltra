function scrLoadGameSpecificOptions() {
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
	opt_gm1wep = ini_read_real("OPTIONS","opt_gm1wep",1);
	//opt_gm_char = ini_read_real("OPTIONS","opt_gm_char",1);
	opt_gm_char_active = ini_read_real("OPTIONS","opt_gm_char_active",1);
}
