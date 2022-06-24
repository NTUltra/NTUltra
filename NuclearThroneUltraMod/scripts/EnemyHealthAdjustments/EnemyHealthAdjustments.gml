///xxx();
// /@description
///@param
function EnemyHealthAdjustments(){
	if instance_exists(Player)
	{
		maxhealth*= 1 + (clamp(Player.loops-1,0,10)*0.125);//0.15
		if Player.crown == 10
			maxhealth *= 1.05;//Very minor crown of difficulty
		
		my_health = maxhealth;
		//var hpReduction = 0;
		if Player.skill_got[11] = 1//Scarier face
		{
			/* Old additive
			if Player.race=25
				hpReduction += round(maxhealth*0.20)
			else
				hpReduction += round(maxhealth*0.18)
				*/
			if Player.race=25
				my_health *= 0.8;
			else
				my_health *= 0.82;
		}
		if Player.skill_got[33] = 1//GLASS ARM CANNON
		{
			//hpReduction += round(maxhealth*0.25)
			my_health *= 0.75;
		}
		if Player.crown == 22 && random(100 + floor(my_health*0.2)) < 25//Crown of luck
		{
			my_health = floor(my_health*0.1);	
		}
		
		if UberCont.opt_gamemode = 9//easy mode
		{
			//hpReduction += round(maxhealth*0.2);
			my_health *= 0.8;
		}
		//my_health = max(1,maxhealth - hpReduction);
		my_health = max(1,my_health);
	}
	if UberCont.opt_gamemode == 5//1HP gamemode
	{
		my_health=1;
		maxhealth=my_health;
	}
	prevhealth = my_health;
	// 400 * 0.82 * 0.75 = 246
	// 400 - (400 * 0.25) - (400 * 0.18) = 
	// 400 - 100 - 72 = 228
}