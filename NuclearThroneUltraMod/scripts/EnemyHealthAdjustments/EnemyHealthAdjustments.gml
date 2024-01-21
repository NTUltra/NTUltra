///xxx();
// /@description
///@param
function EnemyHealthAdjustments(){
	if instance_exists(Player)
	{
		var ogmaxhealth = maxhealth;
		maxhealth *= 1 + (clamp(Player.loops-1,0,7)*0.1);//0.15
		if scrIsHardMode()
			maxhealth *= 1.1;
		if scrIsCrown(10)
			maxhealth *= 1.15;//Crown of difficulty
		if Player.isMarksMan {
			if Player.loops > 0
				Player.ammo[1] += max(0.5,maxhealth*0.095);
			else
				Player.ammo[1] += max(0.9,maxhealth*0.099);
		}
		my_health = maxhealth;
		//var hpReduction = 0;
		/*
		if Player.skill_got[11]//Scarier face
		{
			/* Old additive
			if Player.race=25
				hpReduction += round(maxhealth*0.20)
			else
				hpReduction += round(maxhealth*0.18)
				*/
			/*
			if Player.race=25
				my_health *= 0.8 + clamp(ogmaxhealth*0.00005,0,0.15);
			else
				my_health *= 0.78 + clamp(ogmaxhealth*0.00005,0,0.15);
		}*/
		if Player.skill_got[33] = 1//GLASS ARM CANNON
		{
			//hpReduction += round(maxhealth*0.25)
			if Player.race == 25
				my_health *= 0.73 + clamp(ogmaxhealth*0.00005,0,0.15);
			else
				my_health *= 0.75 + clamp(ogmaxhealth*0.00005,0,0.15);
		}
		if scrIsGamemode(9)//easy mode
		{
			//hpReduction += round(maxhealth*0.2);
			my_health *= 0.9;
		}
		if scrIsCrown(22) && random(100 + floor(my_health*0.2)) < 25//Crown of luck
		{
			my_health = floor(my_health*0.1);
			canBeBuffedHealed = false;
			with instance_create(x,y,CrownOfLucked)
			{
				owner = other.id;
				depth = other.depth - 1;
				yoffset = 0;
			}
		}
		//my_health = max(1,maxhealth - hpReduction);
		my_health = max(1,my_health);
	}
	if scrIsGamemode(5)//1HP gamemode
	{
		my_health = 1;
		maxhealth = my_health;
	}
	else if scrIsGamemode(41)//Double hp
	{
		my_health *= 2;
		maxhealth = my_health;
	}
	prevhealth = my_health;
	// 400 * 0.82 * 0.75 = 246
	// 400 - (400 * 0.25) - (400 * 0.18) = 
	// 400 - 100 - 72 = 228
}