/// @description Do some other cool stuff
alarm[1] = 1;
var projectiles = ds_list_create();
var al = instance_place_list(x,y,projectile,projectiles,false);
var len = 1.5;
for (var i = 0; i < al; i++;)
{
	with projectiles[| i]
	{
		if canBeMoved
		{
			var d = point_direction(x,y,other.x,other.y);
			x += lengthdir_x(len,d);
			y += lengthdir_y(len,d);
			if team != 2
			{
				x -= hspeed * 0.3;
				y -= vspeed * 0.3;
			}
		}
	}
}
ds_list_destroy(projectiles);
var enemies = ds_list_create();
al = instance_place_list(x,y,enemy,enemies,false);
len = 2;
for (var i = 0; i < al; i++;)
{
	with enemies[| i]
	{
		if team != 2
		{
			if alarm[1] > 1
				alarm[1] += 0.5;
			speed *= 0.75;
			var d = point_direction(x,y,other.x,other.y);
			if !place_meeting(x+lengthdir_x(len,d),y,Wall)
				x += lengthdir_x(len,d);
			if !place_meeting(x,y+lengthdir_y(len,d),Wall)
				y += lengthdir_y(len,d);
		}
	}
}
ds_list_destroy(enemies);