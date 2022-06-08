///ApexPredator();
// /@description
///@param
function ApexPredator(){
	if Player.ultra_got[19] {
		if random(100) < 2+Player.speed*1.5//max is 11.75
		{
			with Player
			{
				if myShield == -1 || !instance_exists(myShield)
				{
					myShield = instance_create(x,y,EuphoriaShield);
					with myShield
					{
						owner = other.id;
					}
					alarm[3] += 20;
				}
				else if alarm[3] < 50
				{
					alarm[3] += 10;
				}
				if skill_got[5]
					alarm[3] += 10;
			}
		}
	}
}