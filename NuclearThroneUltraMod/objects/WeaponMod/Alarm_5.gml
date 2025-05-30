/// @description Collision
var chests = ds_list_create();
var al = instance_place_list(x,y,chestprop,chests,false);
	for (var i = 0; i < al; i++) {
		with chests[| i] {
			motion_add(point_direction(other.x,other.y,x,y),2);	
		}
	}
ds_list_destroy(chests);

var props = ds_list_create();
var al = instance_place_list(x,y,prop,props,false);
	for (var i = 0; i < al; i++) {
		with props[| i] {
			motion_add(point_direction(other.x,other.y,x,y),2);
		}
	}
ds_list_destroy(props);

if collision_line(x-8,y-15,x+8,y-10,Wall,false,false)
	y += 2;
alarm[5] = 5;