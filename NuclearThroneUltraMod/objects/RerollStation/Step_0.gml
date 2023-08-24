/// @description Cycle through skills

if place_meeting(x,y,Player) && !used
{
	if (!scrHasAnySkill())
	{
		name = "CAN'T REROLL";
		exit;
	}
	if !active
	{
		active = true;
		var i = skillIndex + 1;
		if i > maxskill
			i = 0;
		with Player {
			while (skill_got[i] != 1 || i == 27 //Ignore patience
			|| (i == 18 && skeletonlives < 1))//Ignore last wish if you lost your lives
			{
				i++;
				if i > maxskill
					i = 0;
			}
		}
		skillIndex = i;
		name = "REROLL#"+skill_name[i];
	}
	if KeyCont.key_pick[Player.p] = 1 && Player.maxhealth > 0
	{
		used = true;
		sprite_index = sprBossHolderInactive;
		Sleep(50);
		instance_create(x,y,Flash);
		BackCont.shake += 50;
		active = false;
		KeyCont.key_pick[Player.p] = 2;
		snd_play(sndUltraGrenadeSuck);
		with Player
		{
			scrLoseSkill(other.skillIndex);
			if (scrCheckUltra(wep_name[wep]) || 	scrCheckUltra(wep_name[bwep]) || scrCheckUltra(wep_name[bwep]))
			{
				rad = GetPlayerMaxRad() * 0.75;
			}
			else
			{
				rad = GetPlayerMaxRad() * 0.5;	
			}
		}
	}
}
else
{
	active = false;	
}
