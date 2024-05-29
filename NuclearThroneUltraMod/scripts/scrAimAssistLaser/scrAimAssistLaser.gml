///scrAimAssistLaser();
// /@description for laser and hyperlaunchers
///@param
function scrAimAssistLaser(originalDirection, adjustAimAssist = 1){
	if team != 2
		return originalDirection;
	var aimAssist = 0;
	//if Player.race == 11
	//	aimAssist += 6;
	
	/*
	if Player.ultra_got[43] == 1//Focused fire
	{
		aimAssist += 5;	
	}
	*/
	var modBoost = 6;
	with Player
	{
		if skill_got[19] == 1//Eagle eyes
			aimAssist += 15;
		if ultra_got[42]==1//Never miss
		{
			aimAssist += 60;
		}
		if skill_got[30] == 1
			modBoost = 9;
		if ultra_got[65]
			modBoost += 11;
		if wepmod1 == 13
			aimAssist += modBoost;
		if wepmod2 == 13
			aimAssist += modBoost;
		if wepmod3 == 13
			aimAssist += modBoost;
		if wepmod4 == 13
			aimAssist += modBoost;
	}
	aimAssist *= adjustAimAssist;
	if aimAssist > 0 && instance_exists(enemy)
	{
		var t = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy);
		if (collision_line(x,y,t.x,t.y,Wall,false,true) < 0)
		{
			var wantD = point_direction(x,y,t.x,t.y);
			//Check the angle difference
			if abs(angle_difference(wantD,originalDirection)) < aimAssist
			{
				return wantD;
			}
			return originalDirection;
		}
		return originalDirection;
	}
	return originalDirection;
}