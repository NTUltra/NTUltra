///scrTurnOffInvisibility();
// /@description
///@param
function scrTurnOffInvisibility(fromPower = false, justTurnOff = false, fromDamage = false){
	if skill_got[29] && firstReveal//Hypersomnia
	{
		firstReveal = false;
		var t = 290;
		if t > 0
		{
			with enemy
			{
				if alarm[1]>0
				{
					alarm[1]+=t;
					scrGiveSnooze();
				}
			}
			with PlayerAlarms2
			{
				alarm[0] = t;	
			}
		}
	}
	if !justTurnOff && ultra_got[112] && thiefStabs < 3
	{
		if fromPower
		{
			thiefStabs += 1;
		}
		else if !instance_exists(InvisibilityTurnOffDelay)
		{
			instance_create(x,y,InvisibilityTurnOffDelay);
		}
	}
	else
	{
		with ThiefStealthDurationDelay
		{
			instance_destroy();	
		}
		thiefStabs = 0;
		justAsheep = false;
		isInvisible = false;
		if bskin == 0
		{
			spr_idle = sprMutant28Idle;
			spr_walk = sprMutant28Walk;
		}
		snd_play(sndThiefShow,0.05);
		if !fromDamage
		{
			if ultra_got[109]
			{
				alarm[3] = max(15,alarm[3] + 5);
			}
			else
				alarm[3] = max(5,alarm[3] + 2);
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
}