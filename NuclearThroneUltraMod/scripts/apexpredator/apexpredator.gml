///ApexPredator();
// /@description
///@param
function ApexPredator(){
	if Player.ultra_got[19] {
		with Player
		{
			if myShield == -1 || !instance_exists(myShield)
			{
				myShield = instance_create(x,y,EuphoriaShield);
				with myShield
				{
					owner = other.id;
				}
			}
			if alarm[3] < 120
			{
				alarm[3] += 1 + (Player.speed*1.5);
				if skill_got[5]
					alarm[3] += 2;
				if skill_got[2]
					alarm[3] += 1;
			}
		}
	}
}