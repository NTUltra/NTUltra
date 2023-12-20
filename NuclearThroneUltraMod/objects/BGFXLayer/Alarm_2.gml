/// @description Clear all out of playarea
var al = ds_list_size(drawer);
var j = 0;
var toDelete = [];
for (var i = 0; i < al; i++;)
{
	var toDraw = drawer[| i];
	if !collision_point(toDraw.xx,toDraw.yy,Floor,false,false)
	{
		toDelete[j] = i;
		j++;
	}
}
for (var i = 0; i < j; i++;)
{
	ds_list_delete(drawer,toDelete[i]);
}