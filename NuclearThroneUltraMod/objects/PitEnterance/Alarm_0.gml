/// @description Smoke
var d = 0
if (!disable || (instance_exists(Player) && Player.wep == 375)) && collision_point(x + 8 + lengthdir_x(10,d),y + 8 + lengthdir_y(10,d),Floor,false,false)
{
	with instance_create(x + 8 + lengthdir_x(10,d),y + 8 + lengthdir_y(10,d),Smoke)
	{
		speed += random(1);
		direction = d;
	}
}
alarm[0] = 3;