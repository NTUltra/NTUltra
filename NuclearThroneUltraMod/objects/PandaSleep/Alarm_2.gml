/// @description Get the weapons and make em circle
var weps = ds_list_create();
var al = collision_circle_list(x,y,64,WepPickup,false,false,weps,false);
for (var i = 0; i < al; i++)
{
	with weps[| i]
	{
		instance_destroy();
		with instance_create(x,y,ThrowWep)
		{
			scrCopyOtherWeapon(other, other.wep);
		}
	}
}
ds_list_destroy(weps);
var throwWeps = ds_list_create();
var al = collision_circle_list(x,y,64,ThrowWep,false,false,throwWeps,false);
var len = 32;
for (var i = 0; i < al; i++)
{
	with throwWeps[| i]
	{
		var d = point_direction(other.x,other.y,x,y) + 30;
		direction = point_direction(x,y,
		other.x + lengthdir_x(32,d),
		other.y + lengthdir_y(32,d));
		speed = 10;
	}
}
alarm[2] = 1;