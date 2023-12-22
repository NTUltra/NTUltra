scrDrop(25,1)

if random(4) > 3 + generation/3 {
	snd_dead = sndSwapCursed //artistic liberty: on duplication they don't play normal death noise

	repeat(2) {
		var ang = random(360)

		var dx = lengthdir_x(3, ang)
		var dy = lengthdir_y(3, ang)
		with instance_create(x + dx, y + dy, CursedSpider) {
			existTime = 30;
			alarm[1] = max(10,alarm[1] - 30);
			if instance_exists(Player)
			{
				if Player.skill_got[29]	//Insomnia
				{
					alarm[1] += 60;
					existTime = 0;
					scrGiveSnooze(0);
				}
					
			}
			generation = 1 + other.generation;
			raddrop = 0;
		}
	}
}
event_inherited()