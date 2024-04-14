/// @description Eats pickups Corpses and Dust
var pickups = ds_list_create();
var pAll = instance_place_list(x,y,Pickup,pickups,false)
for (var k = 0; k < pAll; k++) {
	
	instance_destroy(pickups[| k]);
}
ds_list_destroy(pickups);

var dust = ds_list_create();
var dAll = instance_place_list(x,y,Dust,pickups,false)
for (var k = 0; k < dAll; k++) {
	
	instance_destroy(dust[| k]);
}
ds_list_destroy(dust);

var debris = ds_list_create();
var dAll = instance_place_list(x,y,Debris,debris,false)
for (var k = 0; k < dAll; k++) {
	
	instance_destroy(debris[| k]);
}
ds_list_destroy(debris);

//And now eat corpses
var corpseList = ds_list_create();
var al = instance_place_list(x,y,Corpse,corpseList,false);
for (var i = 0; i < al; i++) {
	with corpseList[| i] {
		instance_destroy(id,false);
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
		if collision_point(xx,yy,other.id,true,false)
		{
			markForDelete[j] = i;
			j ++;
		}
	}
	for (var i = 0; i < j; i++)
	{
		ds_list_delete(corpses,markForDelete[i]);
	}
}
alarm[2] = 2;