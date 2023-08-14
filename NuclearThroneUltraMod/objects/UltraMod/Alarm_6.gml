/// @description Collision Weppickup
var weps = ds_list_create();
var al = instance_place_list(x,y,WepPickup,weps,false);
	for (var i = 0; i < al; i++) {
		with weps[| i] {
			motion_add(direction,2);	
		}
	}
ds_list_destroy(weps);

alarm[6] = 5;