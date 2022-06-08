/// @description very Fair teleport
snd_play(sndHyperCrystalSearch);
var d = depth - 1;
if instance_exists(Player) {
	var i = 0;
	var mt = 300;
	do {
		i++
		var angle = random(360)
		var length = 96 + random(256)
		var dx = lengthdir_x(length, angle)
		var dy = lengthdir_y(length, angle)
			
		with instance_nearest(x + dx, y + dy, Floor) {
			dx = x + 16
			dy = y + 16
		}
	} until x != dx && y != dy && (point_distance(Player.x, Player.y, dx, dy) > maxCrystalDis && point_distance(Player.x, Player.y, dx, dy) < 300) || i > mt
	if i <= mt {
		repeat(24)
		with instance_create(x,y,Curse) {
			depth = d
			var angle = random(360)
			var length = 8 + random(25)
			x += lengthdir_x(length, angle)
			y += lengthdir_y(length, angle)
		}
		
		x = dx
		y = dy
		
		var hitWalls = ds_list_create();
		var amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
		while(amountOfWalls > 0)
		{
			for (var i = 0; i < amountOfWalls; i++) {
				with hitWalls[| i] {
					instance_create(x,y,SmallWallBreak);
					instance_destroy();
					instance_create(x,y,FloorExplo);
				}
			}
			ds_list_clear(hitWalls);
			amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
		}
		ds_list_destroy(hitWalls);
		
		repeat(12)
		with instance_create(x,y,Curse) {
			depth = d
			var angle = random(360)
			var length = 8 + random(25)
			x += lengthdir_x(length, angle)
			y += lengthdir_y(length, angle)
		}
	}
} else {
	var angle = random(360)
	var length = 5 + random(75)
	var dx = lengthdir_x(length, angle)
	var dy = lengthdir_y(length, angle)
			
	with instance_nearest(x + dx, y + dy, Floor) {
		other.x = x + 16
		other.y = y + 16
	}
		
	repeat(24)
	with instance_create(x,y,Curse) {
		depth = d
		var angle = random(360)
		var length = 8 + random(25)
		x += lengthdir_x(length, angle)
		y += lengthdir_y(length, angle)
		motion_add(random(360),0.1);
	}
}
alarm[1] += 20;