/// @description keep alive
my_health = maxhealth;


var props = ds_list_create();
var al = instance_place_list(x,y,prop,props,false);
for (var i = 0; i < al; i++) {
	with props[| i] {
		instance_destroy(id,false);
	}
}