///scrCrackShotFire();
// /@description
///@param
function scrCrackShotFire(){
	with Marker
	{
		UberCont.mouse__x = x;
		UberCont.mouse__y = y;
		with other
		{
			scrFire();
			reload += wep_load[wep] * 0.33;
		}
	}
	ammo[wep_type[wep]] = max(0,ammo[wep_type[wep]]);
}