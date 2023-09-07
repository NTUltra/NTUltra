/// @description Init
depth = 6;
image_speed = 0.4;
scrSkills();
name = "";
skillIndex = irandom(maxskill);
active = false;
used = false;
alarm[0] = 5;
var weps = ds_list_create();
var al = instance_place_list(x,y,WepPickup,weps,false);
	for (var i = 0; i < al; i++) {
		with weps[| i] {
			motion_add(point_direction(other.x,other.y,x,y),2);	
		}
	}
ds_list_destroy(weps);