///@description AI
alarm[1] = 14 + random(10)//30+random(10)
if !halfHP && my_health < maxhealth * 0.6
{
	halfHP = true;
	snd_play(sndHyperCrystalHalfHP);
}
else if !lowHP && my_health < maxhealth * 0.25
{
	lowHP = true;
	snd_play(sndHyperCrystalLowHP);
	
}
scrTarget()
if target != noone
{
	var dis = point_distance(x,y,target.x,target.y);
	if dis < 200 && !hasHadIntro
	{
		instance_create(x,y,DramaCamera);
		hasHadIntro = true;
	}
	else
	{
		if dis < 160 && alarm[2] < 1 && alarm[3] < 1
		{
			var ds = ds_list_size(myCrystals);
			var alive = 0;
			for (var i = 0; i < ds; i++) {
				if instance_exists(myCrystals[| i])
					alive++;
			}
			if alive < ammo && random(alive) < 0.5
			{
				//New crystals
				event_user(0);	
			}
			else if alarm[2] < 2 && random(2) < 1
			{
				//Explode
				event_user(1);
			}
		
			if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && random(3) < 1
				direction = point_direction(x,y,target.x,target.y);
		}
		else if dis < 64
		{
			if isCursed && random(10) < 1
			{
				event_user(2);//Teleport
			}
			if random(3) < 1
				direction = point_direction(x,y,target.x,target.y);
			else
				direction = choose(direction,point_direction(x,y,target.x,target.y)+90+random(180))
		}
		else if random(3) < 1
		{
			if isCursed//Teleport why not
			{
				event_user(2);
			}
			direction = random(360)
		}
		else
		{
			if isCursed//Teleport why not
			{
				event_user(2);
			}
			direction = point_direction(x,y,target.x,target.y);
		}
	}
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	alarm[1] = 10+random(30)
}
else if isCursed && random(10) < 1
{
	event_user(2);
}

