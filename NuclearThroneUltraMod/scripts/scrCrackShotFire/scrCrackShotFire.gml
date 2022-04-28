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
		}
	}
}