var sleepy = false;
if instance_exists(Player) && Player.skill_got[29] {
	sleepy = true;	
}
repeat(6)
{
	with instance_create(x+random(8)-4,y+random(8)-4,Maggot)
	{
		wasResurrected = true;
		existTime = 30;
		if sleepy {
			alarm[1] += 40;
			scrGiveSnooze();
		}
	}
}
