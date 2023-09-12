friction = 1;
if instance_exists(Player) && instance_exists(Floor)
{

if Player.area != 119 && (Player.area=100 || (Player.area == 9 && Player.subarea == 3))
{
	instance_destroy()
	exit;
}
var tries = 200;
do {
	x = Player.x
	y = Player.y
	ang = random(360);
	x = Player.x+lengthdir_x(96+random(128),ang);
	y = Player.y+lengthdir_y(96+random(128),ang);
	dir = instance_nearest(x,y,Floor)
	if dir != noone {
		var o = 16;
		if dir.object_index == FloorExplo {
			o = 8;
		}
		x = dir.x + o;
		y = dir.y + o;
	}
	tries--;
}
until point_distance(x,y,Player.x,Player.y) > 64 and place_free(x,y) or tries < 0

}

image_speed = 0.4
depth = 1;
//if Player.loops>=1
alarm[0] = 40


snd_play(sndIDPDPortalSpawn,0,true)

