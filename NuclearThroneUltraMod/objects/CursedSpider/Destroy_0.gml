scrDrop(25,1)

if random(4) > 3 + generation/3 {
	snd_dead = sndSwapCursed //artistic liberty: on duplication they don't play normal death noise

	repeat(2) {
		var ang = random(360)

		var dx = lengthdir_x(3, ang)
		var dy = lengthdir_y(3, ang)
		with instance_create(x + dx, y + dy, CursedSpider) {
			generation = 1 + other.generation;
			raddrop = 0;
		}
	}
}
event_inherited()