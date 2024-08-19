/// @description Path of destruction Atom
if !instance_exists(Player)
	exit;
alarm[4] = 2;
if Player.ultra_got[59] && Player.altUltra
{
	var dir = random(360);
	var l = random_range(16,32);
	var pa = point_direction(Player.x,Player.y,mouse_x,mouse_y);
	var tx = Player.x + (hspeed * 3) + lengthdir_x(l,dir) + lengthdir_x(16,pa);
	var ty = Player.y + (vspeed * 3) + lengthdir_y(l,dir) + lengthdir_y(16,pa);
	with instance_create(tx,ty,Corrosion)
	{
		direction = random(360);
		speed = 0.5;
	}
}
