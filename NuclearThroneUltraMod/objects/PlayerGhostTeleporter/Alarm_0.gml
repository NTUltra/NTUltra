/// @description Smoke
var d = direction + 180;
with instance_create(x + 8 + lengthdir_x(10,d),y + 8 + lengthdir_y(10,d),Smoke)
{
	speed += random(1);
	direction = d;
}
alarm[0] = 3;
