/// @description Collision
if myPartner == noone || !instance_exists(myPartner)
	exit;
var lx = lengthdir_x(8,image_angle);
var ly = lengthdir_y(8,image_angle);
var hits = ds_list_create();

var al = collision_rectangle_list(x - lx,y - ly,myPartner.x + lx,myPartner.y + ly,projectile,false,false,hits,false);
for (var i = 0; i < al; i++)
{
	with hits[| i] {
		if isVenomized == 0
			isVenomized += 1;
	}
}
ds_list_destroy(hits);
alarm[3] = 1;