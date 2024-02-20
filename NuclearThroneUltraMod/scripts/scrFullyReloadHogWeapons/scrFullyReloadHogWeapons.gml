///scrFullyReloadHogWeapons();
// /@description WOW
///@param
function scrFullyReloadHogWeapons(){
		if skill_got[35]
		{
			hogReload[0] = wep_load[hogWep[0]]*-2;
			hogReload[1] = wep_load[hogWep[1]]*-2;
			hogReload[2] = wep_load[hogWep[2]]*-2;
			hogReload[3] = wep_load[hogWep[3]]*-2;
			hogReload[4] = wep_load[hogWep[4]]*-2;
			hogReload[5] = wep_load[hogWep[5]]*-2;
			hogReload[6] = wep_load[hogWep[6]]*-2;
			hogReload[7] = wep_load[hogWep[7]]*-2;
		}
		else
		{
			hogReload[0] = 0
			hogReload[1] = 0;
			hogReload[2] = 0;
			hogReload[3] = 0;
			hogReload[4] = 0;
			hogReload[5] = 0;
			hogReload[6] = 0;
			hogReload[7] = 0;	
		}
}