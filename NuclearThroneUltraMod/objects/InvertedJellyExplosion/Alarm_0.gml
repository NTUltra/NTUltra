var sleepy = false;
if instance_exists(Player) && Player.skill_got[29] {
	sleepy = true;	
}
repeat(4)
{
	with instance_create(x+random(8)-4,y+random(8)-4,InvertedTinyJellyFish)
	{
		wasResurrected = true;
		existTime = 30;
		motion_add(random(360),1);
		if sleepy {
			alarm[1] += 40;
			scrGiveSnooze();
		}
	}
}
snd_play(sndBubblePop,0.1);