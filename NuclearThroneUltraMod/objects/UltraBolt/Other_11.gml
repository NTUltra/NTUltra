/// @description Wall Collision
if wallsdestroyed<1 {
	event_inherited();	
} else {
	
	speed = clamp(speed,16,24);
	var walls = ds_list_create();
	var al = instance_place_list(x,y,Wall,walls,false)
	for (var i = 0; i < al; i++) {
		instance_create(walls[| i].x,walls[| i].y,FloorExplo)
		instance_destroy(walls[| i]);
	}
	ds_list_destroy(walls);
	x = xprev;
	y = yprev;
	wallsdestroyed-=1;	
}