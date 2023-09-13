/// @description Revive
var corpseList = ds_list_create();
var al = instance_place_list(x,y,Corpse,corpseList,false);
for (var i = 0; i < al; i++) {
	with corpseList[| i] {
		instance_destroy(id,false);
		with other {
			tx = other.x;
			ty = other.y;
			event_user(0);
		}
	}
}
ds_list_destroy(corpseList);
with CorpseCollector
{
	var al = ds_list_size(corpses)
	var markForDelete = [];
	var j = 0;
	for (var i = 0; i < al; i++)
	{
		var corpse = corpses[| i];
		var xx = corpse.xx;
		var yy = corpse.yy;
		if collision_point(xx,yy,ReviveArea,true,false)
		{
			with other {
				tx = xx;
				ty = yy;
				event_user(0);
			}
			markForDelete[j] = i;
			j ++;
		}
	}
	for (var i = 0; i < j; i++)
	{
		ds_list_delete(corpses,markForDelete[i]);
	}
}
instance_destroy();