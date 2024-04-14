/// @description Suck it
var ss = suckStrength;
var enems = ds_list_create();
var al = instance_place_list(x,y,enemy,enems,false)
for (var i = 0; i < al; i++) {
	with enems[| i] {
		var d = point_direction(x,y,other.x,other.y);
		if place_free(x+lengthdir_x(ss,d),y)
			x += lengthdir_x(ss,d)
		if place_free(x,y+lengthdir_y(ss,d))
			y += lengthdir_y(ss,d)
	}
}
ds_list_destroy(enems);

var pickups = ds_list_create();
var al = instance_place_list(x,y,Pickup,pickups,false)
for (var i = 0; i < al; i++) {
	with pickups[| i] {
		var d = point_direction(x,y,other.x,other.y);
		if place_free(x+lengthdir_x(ss,d),y)
			x += lengthdir_x(ss,d)
		if place_free(x,y+lengthdir_y(ss,d))
			y += lengthdir_y(ss,d)
	}
}
ds_list_destroy(pickups);

var chests = ds_list_create();
var al = instance_place_list(x,y,chestprop,chests,false)
for (var i = 0; i < al; i++) {
	with chests[| i] {
		var d = point_direction(x,y,other.x,other.y);
		if place_free(x+lengthdir_x(ss,d),y)
			x += lengthdir_x(ss,d)
		if place_free(x,y+lengthdir_y(ss,d))
			y += lengthdir_y(ss,d)
	}
}
ds_list_destroy(chests);

var weps = ds_list_create();
var al = instance_place_list(x,y,WepPickup,weps,false)
for (var i = 0; i < al; i++) {
	with chests[| i] {
		var d = point_direction(x,y,other.x,other.y);
		if place_free(x+lengthdir_x(ss,d),y)
			x += lengthdir_x(ss,d)
		if place_free(x,y+lengthdir_y(ss,d))
			y += lengthdir_y(ss,d)
	}
}
ds_list_destroy(weps);

alarm[2] = 1;