/// @description Collision
var chests = ds_list_create();
var al = instance_place_list(x,y,chestprop,chests,false);
	for (var i = 0; i < al; i++) {
		with chests[| i] {
			motion_add(point_direction(other.x,other.y,x,y),2);	
		}
	}
ds_list_destroy(chests);
var chestprops = ds_list_create();
var al = instance_place_list(x,y,chestprop,chestprops,false);
	for (var i = 0; i < al; i++) {
		with chestprops[| i] {
			instance_destroy(id,false);
		}
	}
ds_list_destroy(chestprops);
alarm[5] = 5;