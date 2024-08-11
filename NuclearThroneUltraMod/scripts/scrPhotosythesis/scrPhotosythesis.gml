///scrPhotosythesis();
// /@description
///@param
function scrPhotosythesis(healAmount){
	with Player
	{
		if skill_got[22]
		{
			//Stress linger
			alarm[10] = 90;
		}
		if ultra_got[18] && altUltra
		{
			healAmount = max(healAmount + 1,1);
			var scaling = ((healAmount-1)*0.5);
			if instance_exists(SunBeam)
			{
				with SunBeam
				{
					disappear = false;
					atMax = false;
					alarm[0] = 0;
					targetRadius += baseRadius * ((healAmount-1)*0.5)
					targetRadius = min(targetRadius,128);
					duration += duration * scaling;
					duration = min(duration,120);
					dmg += scaling * 0.5;
					dmg = min(dmg,4);
					targetLightWidth = targetRadius * 0.75;
					targetLightWidthTop = targetRadius * 0.75;
				}
			}
			else
			{
				with instance_create(UberCont.mouse__x,UberCont.mouse__y,SunBeam)
				{
					team = other.team;
					targetRadius += baseRadius * scaling
					targetRadius = min(targetRadius,128);
					duration += duration * scaling;
					duration = min(duration,120);
					dmg += scaling * 0.5;
					dmg = min(dmg,4);
					targetLightWidth = targetRadius *0.75;
					targetLightWidthTop = targetRadius *0.75;
				}
			}
		}
	}
}