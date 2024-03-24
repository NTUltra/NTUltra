var sleepy = false;
if instance_exists(Player) && Player.skill_got[29] {
	sleepy = true;	
}
repeat(8)
{
	with instance_create(x+random(8)-4,y+random(8)-4,MaggotInverted)
	{
		existTime = 30;
		wasResurrected = true;
		firstTime = false;
		if sleepy {
			alarm[1] += 40;
			scrGiveSnooze();
		}
	}
}
