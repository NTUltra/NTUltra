event_inherited();
image_angle = random(360)
motion_add(random(360),random(1.25)+0.25)
friction = 0.01
image_speed = 0
image_index = random(5)
depth = 0;
image_xscale = 0.5
image_yscale = 0.5
rot = (1+random(3))*choose(1,-1)
growspeed = 0.003+random(0.002)
team = 0
typ = 0//2
dmg = 3;
cantHitTeam = -2;
moodSwingable = false;
isDoc = false;
alarm[4] = 1;
if instance_exists(Player)
{//frog
	//FROG POTENCY
	//if Player.ultra_got[92] && !Player.altUltra
	//	dmg = 5;
	if Player.race=23
	{
		cantHitTeam = 2;
		team = 2;
		//the normal scale
		image_xscale += 0.15
		image_yscale += 0.15
		if Player.skill_got[5]
		{
			image_xscale += 0.1;
			image_yscale += 0.1;
		}
	}
	else if Player.skill_got[12]
	{
		image_xscale -= 0.1	
		image_yscale -= 0.1
	}
	if Player.skill_got[43]
	{
		moodSwingable = true;
		if Player.race == 25
		{
			isDoc = true;	
		}
		alarm[3] = 1;
		alarm[4] = 0;
	}
}
alarm[2] = 2;
alarm[1] = 10;