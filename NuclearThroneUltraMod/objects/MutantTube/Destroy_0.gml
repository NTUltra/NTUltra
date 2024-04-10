repeat(8)
	with instance_create(x+random(8)-4,y+random(8)-4,Freak)
	{
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] += 60;
			scrGiveSnooze();
		}
	}



event_inherited()

