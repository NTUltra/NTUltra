///ApexPredator();
// /@description
///@param
function ApexPredator(){
	if Player.ultra_got[19] && !Player.altUltra {
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
			snd_hurt = sndDamageNegate;
			if alarm[3] < 70
			{
				alarm[3] += 1 + (Player.speed*1.4);
				if skill_got[5]
					alarm[3] += 1;
				if skill_got[2]
					alarm[3] += 1;
			}
		}
	}
}