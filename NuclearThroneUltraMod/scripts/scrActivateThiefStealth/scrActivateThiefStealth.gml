///scrActivateThiefStealth();
// /@description
///@param
function scrActivateThiefStealth(){
	if ultra_got[109]
	{
		alarm[3] = max(14,alarm[3] + 5);
	}
	if !instance_exists(GenCont)
		snd_play(sndThiefHide,0.05);
	var ang = random(360);
	if bskin == 0
	{
		spr_idle = sprMutant28IdleConceal;
		spr_walk = sprMutant28WalkConceal;
	}
	else if bskin == 1
	{
		spr_idle = sprMutant28BIdleConceal;
		spr_walk = sprMutant28BWalkConceal;
	}
	else if bskin == 2
	{
		spr_idle = sprMutant28CIdleConceal;
		spr_walk = sprMutant28CWalkConceal;
	}
	with instance_create(x,y,AnimDestroyTop)
	{
		if other.bskin == 1
		{
			sprite_index = sprMutant28BConceal;
		}
		else if other.bskin == 2
		{
			sprite_index = sprMutant28CConceal;
		}
		else
		{
			sprite_index = sprMutant28Conceal;
		}
		image_xscale = other.right;
	}
	repeat(6)
	{
		with instance_create(x,y,Smoke)
		{
			motion_add(other.direction,1);
			motion_add(ang,2);
		}
		ang += 60;
	}
	isInvisible = true;
	justAsheep = true;
	instance_create(x,y,ThiefStealthDurationDelay);
	with enemy
	{
		if team != other.team
			target = noone;
	}
}