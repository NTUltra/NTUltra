/// @description Speed minipulation
alarm[2] = 2;
var allHits = [];
var allProjs = [];
with HandTrail
{
	var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	for (var j = 0; j < al; j++) {
		if !array_contains(allHits,hits[| j])
			allHits[array_length(allHits)] = hits[| j];
	}
	ds_list_destroy(hits);
	var projs = ds_list_create();
	al = instance_place_list(x,y,projectile,hits,false)
	for (var j = 0; j < al; j++) {
		if !array_contains(allProjs,projs[| j])
			allProjs[array_length(allProjs)] = projs[| j];
	}
	ds_list_destroy(projs);
}
var al = array_length(allHits);
for (var i = 0; i < al; i ++)
{
	with allHits[i]
	{
		if team != 2 && my_health > 0 && speed > 0
		{
			speed -= 1;
		}
	}
}
al = array_length(allProjs);
for (var i = 0; i < al; i ++)
{
	with allProjs[i]
	{
		if team != 2
		{
			if speed > 1 && canBeMoved
			{
				speed *= 0.95;
			} 
		}
		else if speed > 0
		{
			speed *= 1.1;
		}
	}
}