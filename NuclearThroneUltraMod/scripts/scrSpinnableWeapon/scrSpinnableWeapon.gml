///scrSpinnableWeapon();
// /@description
///@param
function scrSpinnableWeapon(theWep){
	if !instance_exists(SpinWeapon)
	{
		with instance_create(x,y,SpinWeapon)
		{
			alarm[0] = 20;
			wep = theWep;
		}
	}
	else
	{
		with SpinWeapon
		{
			alarm[0] = 20;
			wep = theWep;
		}
	}
}