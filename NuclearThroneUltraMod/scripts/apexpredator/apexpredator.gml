///ApexPredator();
// /@description
///@param
function ApexPredator(){
	if Player.ultra_got[19] && !Player.altUltra  {
		if random(100) < 11 * luck
		{
			//Snare
			if Player.skill_got[5]
			{
				if Player.ultra_got[17]
				{
					snd_play(sndPlantSnareTrapperTB);
				}
				else if Player.ultra_got[20]
				{
					snd_play(sndPlantSnareTB);
				}
				else
				{
					snd_play(sndPlantSnare);
				}
			}
			else
			{
				if Player.ultra_got[17]//Big
				{
					snd_play(sndPlantSnareTrapper);
				}
				else if Player.ultra_got[20]//Stereo
				{
					snd_play(sndPlantSnare);
				}
				else
				{
					snd_play(sndPlantPower);
				}
			}
			with Tangle
				instance_destroy();
			instance_create(x,y,Tangle);
			if Player.skill_got[Player.maxskill + 1]
			{
				with instance_create(x,y,PlantApexVine)
				{
					motion_add(point_direction(x,y,Player.x,Player.y),7);	
				}
			}
		}
		with Player
		{
			/*
			if myShield == -1 || !instance_exists(myShield)
			{
				myShield = instance_create(x,y,EuphoriaShield);
				with myShield
				{
					owner = other.id;
				}
			}*/
			snd_hurt = sndDamageNegate;
			if alarm[3] < 70
			{
				alarm[3] += 1 + (Player.speed*1.4);
				//if skill_got[5]
				//	alarm[3] += 1;
				if skill_got[2]
					alarm[3] += 1;
			}
		}
	}
}