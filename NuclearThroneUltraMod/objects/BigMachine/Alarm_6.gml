/// @description Kill anyprops
var props = ds_list_create();
var al = instance_place_list(x,y,Wall,prop,false)
for (var j = 0; j < al; j++) {
	with props[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(props);