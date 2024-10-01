function scrSaveGameSpecificOptions() {
	if scrIsGamemode(26) || scrIsGamemode(27) || scrIsGamemode(37) || isLeaderboardGamemode//Can't save daily
	{
		ini_write_real("OPTIONS","gamemodes",1);
		ini_write_real("OPTIONS","gamemode0",0);
	}
	else if is_array(opt_gamemode)
	{
		var al = array_length(opt_gamemode);
		ini_write_real("OPTIONS","gamemodes",al);
		for (var i = 0; i < al; i++)
		{
			ini_write_real("OPTIONS","gamemode"+string(i),opt_gamemode[i]);
		}
	}
	ini_write_string("OPTIONS","customsurvival",opt_custom_survival);
	ini_write_real("OPTIONS","opt_gm1wep",opt_gm1wep);
	//ini_write_real("OPTIONS","opt_gm_char",opt_gm_char);
	ini_write_real("OPTIONS","opt_gm_char_active",opt_gm_char_active);
}
