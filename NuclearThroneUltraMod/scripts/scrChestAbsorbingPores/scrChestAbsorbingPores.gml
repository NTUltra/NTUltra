///scrChestAbsorbingPores();
// /@description
///@param
function scrChestAbsorbingPores(thePlayer){
	var cx = x;
	var cy = y;
	with thePlayer
	{
		if skill_got[36]//Absorbing Pores
		{
			snd_play(sndChestReload);
			with instance_create(cx,cy,HealAbsorbingPores)
				sprite_index = sprAbsorbingPoresChest;
			var lowa = 0;
			var lowb = 0;
			var lowc = 0;
			if skill_got[35]
			{
				lowa = wep_load[wep]*-2;
				lowb = wep_load[bwep]*-2;
				lowc = wep_load[cwep]*-2;
			}
			reload = lowa;
			breload = lowb;
			creload = lowc;
		}
	}
}