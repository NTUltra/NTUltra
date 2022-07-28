/// @description shoot fishies

alarm[3] = 2;

if instance_exists(Player) {
	with instance_create(x,y,InvertedBoneFish) {
		var angle = point_direction(x, y, Player.x, Player.y) + (random(2) - 1) * 10
		motion_add(angle, 8)
		raddrop = 0
	}

	image_index = 0
	sprite_index = spr_fire
	snd_play(choose(sndWater1,sndWater2))
	snd_play(sndHealthPickup)
}
