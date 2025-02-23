///scrTurnOffInvisibility();
// /@description
///@param
function scrTurnOffInvisibility(){
	justAsheep = false;
	isInvisible = false;
	if bskin == 0
	{
		spr_idle = sprMutant28Idle;
		spr_walk = sprMutant28Walk;
	}
	instance_create(x,y,InvisibilityDelay);
	var ang = random(360);
	repeat(6)
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(other.direction,1);
			motion_add(ang,2);
		}
		ang += 60;
	}
	
}