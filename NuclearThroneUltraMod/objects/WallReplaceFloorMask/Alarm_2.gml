/// @description Destroy walls add floors
event_user(0);
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var j = 0; j < al; j++) {
	with walls[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(walls);
var tops = ds_list_create();
var al = instance_place_list(x,y,Top,tops,false)
for (var j = 0; j < al; j++) {
	with tops[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(tops);
var tops = ds_list_create();
var al = instance_place_list(x,y,TopSmall,tops,false)
for (var j = 0; j < al; j++) {
	with tops[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(tops);