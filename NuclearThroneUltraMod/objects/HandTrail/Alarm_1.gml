/// @description Manipulate
alarm[1] = 2;
var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false)
for (var j = 0; j < al; j++) {
	with hits[| j]
	{
		if team != 2 && my_health > 0 && speed > 0
		{
			speed -= 1;
		}
	}
}
ds_list_clear(hits);
var al = instance_place_list(x,y,projectile,hits,false)
for (var j = 0; j < al; j++) {
	with hits[| j]
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
ds_list_destroy(hits);