/// @description shoot fishies
if currentShoot < maxShoot
	alarm[3] = fishFireRate;
currentFish += 1;
alarm[8] = 30;
if instance_exists(Player) {
	with instance_create(x,y,BoneFish) {
		var angle = point_direction(x, y, Player.x, Player.y) + (random(2) - 1) * 10
		motion_add(angle, 6)
		raddrop = 0
		countKill = false;
		alarm[1] *= 0.75;
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] += 60;
			speed *= 0.75;
			scrGiveSnooze();
		}
	}

	image_index = 0
	sprite_index = spr_fire
	snd_play(choose(sndWater1,sndWater2))
	snd_play(sndHealthPickup)
}
