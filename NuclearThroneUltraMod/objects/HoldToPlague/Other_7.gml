/// @description START A PLAGUE
with Player
{
	var gottenSkills = 0;
	var si = 0;
	repeat(maxskill + 1)
	{
		if skill_got[si]
		{
			gottenSkills += 1;
		}
		si++;
	}
	if gottenSkills > 1
	{
		var currentRad = rad;
		with Rad
		{
			isGettingSucked = true;
			event_perform(ev_alarm,5);
			event_user(0);	
			instance_destroy();
			with instance_create(x,y,PlutoFX)
			{
				motion_add(point_direction(x,y,Player.x,Player.y),1+random(2));
			}
			with instance_create(x,y,HorrorMegaSuck)
			{
				targetX = Player.x
				targetY = Player.y;
				distance = point_distance(x,y,targetX,targetY);
				dir = point_direction(x,y,targetX,targetY);
			}
		}
		var ran = random(360);
		repeat(3)
		{
			with instance_create(x,y,Termite)
			{
				motion_add(ran,3)
				team = 2;
			}
			ran += 120;
		}
		instance_create(x,y,PlagueBringer);
	}
	else
	{
		BackCont.shake += 5;
		with instance_create(x,y,PopupText)
		{
			mytext = "NOT ENOUGH MUTATIONS!";
			theColour=c_red;
		}	
	}
}
instance_destroy();