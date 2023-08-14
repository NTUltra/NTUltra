/// @description Collision
var chests = ds_list_create();
var al = instance_place_list(x,y,chestprop,chests,false);
	for (var i = 0; i < al; i++) {
		with chests[| i] {
			motion_add(point_direction(other.x,other.y,x,y),2);	
		}
	}
ds_list_destroy(weps);
var weps = ds_list_create();
var al = instance_place_list(x,y,WepPickup,weps,false);
	for (var i = 0; i < al; i++) {
		with weps[| i] {
			motion_add(direction,2);	
		}
	}
ds_list_destroy(weps);
var props = ds_list_create();
var al = instance_place_list(x,y,prop,props,false);
	for (var i = 0; i < al; i++) {
		with props[| i] {
			instance_destroy(id,false);
		}
	}
ds_list_destroy(props);
alarm[6] = 5;