/// @description Phoenix
with Player {
	if phoenixrevives > 10
	{
		alarm[2] = 1;
		with instance_create(x,y,Flame)
		{
			motion_add(random(360),3);
			team = other.team
		}
		with instance_create(x,y,Flame)
		{
			motion_add(random(360),5);
			team = other.team
		}
		exit;
	}
	var lowa = 0;
	var lowb = 0;
	var lowc = 0;
	if skill_got[35]
	{
		lowa = wep_load[wep]*-2;
		lowb = wep_load[bwep]*-2;
		lowc = wep_load[cwep]*-2;
	}
	if reload > lowa
	{
		with instance_create(x,y,Flame)
		{
			motion_add(random(360),2);
			team = other.team
		}
	}
	if phoenixrevives > 3
	{
		if breload > lowb
		{
			with instance_create(x,y,Flame)
			{
				motion_add(random(360),3);
				team = other.team
			}
		}
		if creload > lowc
		{
			with instance_create(x,y,Flame)
			{
				motion_add(random(360),3);
				team = other.team
			}
		}	
	}
}