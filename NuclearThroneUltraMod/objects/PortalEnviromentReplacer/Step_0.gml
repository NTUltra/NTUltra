/// @description Radius
scrActivateAllOutOfRange();
var ar = showNewArea ? area : prevArea;
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Wall,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		scrWallArea(ar);
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Floor,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		if object_index == FloorExplo
			scrFloorExploArea(ar);
		else
			scrFloorArea(ar,styleb);
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Top,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		scrTopArea(ar);
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,TopSmall,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		scrTopArea(ar);
	}
}
ds_list_destroy(newcollision);
radius += 6;
if radius >  maxRadius
{
	if !showNewArea
	{
		instance_destroy();
		exit;
	}
	showNewArea = false
	radius = 10;
}