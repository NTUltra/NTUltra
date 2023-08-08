///scrGiveEuphoriaShield();
// /@description
///@param
function scrGiveEuphoriaShield(){
	if myShield == -1 || !instance_exists(myShield)
	{
		myShield = instance_create(x,y,EuphoriaShield);
		with myShield
		{
			owner = other.id;
		}
	}
}