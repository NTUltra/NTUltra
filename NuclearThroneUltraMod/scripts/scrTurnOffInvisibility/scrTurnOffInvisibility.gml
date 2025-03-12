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
	snd_play(sndThiefShow,0.05);
	if ultra_got[109]
	{
		alarm[3] = max(15,alarm[3] + 5);
	}
	else
		alarm[3] = max(5,alarm[3] + 2);
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