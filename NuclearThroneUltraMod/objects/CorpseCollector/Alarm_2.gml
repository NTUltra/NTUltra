/// @description Clear all out of playarea
var al = ds_list_size(corpses);
var j = 0;
var toDelete = [];
for (var i = 0; i < al; i++;)
{
	var corpse = corpses[| i];
	if !collision_point(corpse.xx,corpse.yy,Floor,false,false)
	{
		toDelete[j] = i;
		j++;
	}
}
for (var i = 0; i < j; i++;)
{
	ds_list_delete(corpses,toDelete[i]);
}