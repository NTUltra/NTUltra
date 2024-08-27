///scrCopyWeaponMod();
// /@description
///@param
function scrCopyWeaponMod(othr){
	if instance_exists(Player) && othr.team == Player.team
	{
		if !scrIsCrown(29)
		{
			Mod1 = othr.Mod1;
			Mod2 = othr.Mod2;
			Mod3 = othr.Mod3;
			Mod4 = othr.Mod4;
		}
		poppop = othr.poppop;
		wepFire = othr.wepFire;
		isVenomized = othr.isVenomized;
		//speed *= Player.pSpeedBoost;
		if !hadSpeedApplied && canBeMoved//speed > 0
		{
			speed *= Player.pSpeedBoost;
			hadSpeedApplied = true;
			var speedBoost = 1.11;
			var spda = 2;
			var speedAdd = 0;
			if poppop
			{
				speed *= 1.15;
				speed += 1.25;
			}
			if Player.skill_got[30] == 1
			{
				speedBoost = 1.15;
				spda = 3;
			}
			if Player.ultra_got[65]
			{
				speedBoost += 0.1;
				spda += 1.8;
			}
			if Player.race == 11
			{
				speed *= 1.1;
				speedAdd += 1.5;
			}
			if scrIsCrown(23)//Crown of speed
			{
				speed *= 1.12;
				speedAdd += 4;
			}
			if scrIsCrown(24)//Crown of sloth
			{
				speed *= 0.92;
				speedAdd = max(0,speedAdd-1);
			}
			//Projectile speed mod
			if Mod1==11
			{
				speed*=speedBoost
				speedAdd += spda;
			}
			if Mod2==11
			{
				speed*=speedBoost
				speedAdd += spda;
			}
			if Mod3==11
			{
				speed*=speedBoost
				speedAdd += spda;
			}
			if Mod4==11
			{
				speed*=speedBoost
				speedAdd += spda;
			}
			speed += speedAdd;
			speed = clamp(speed,0.5,35);
		}
	}
}