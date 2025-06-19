var sleepy = false;
if instance_exists(Player) && Player.skill_got[29] {
	sleepy = true;	
}
repeat(3)
{
	with instance_create(x+random(8)-4,y+random(8)-4,MiniSlime)
	{
		wasResurrected = true;
		existTime = 30;
		walk += 10;
		motion_add(random(360),3);
		if sleepy {
			alarm[1] += 40;
			scrGiveSnooze();
		}
	}
}
