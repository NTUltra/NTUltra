/// @description Trail
var floors = ds_list_create();
var al = instance_place_list(x,y,Floor,floors,false)
for (var j = 0; j < al; j++) {
	with floors[| j]
	{
		var corrosion = instance_place(x,y,HandTrail);
		if corrosion == noone
		{
			if object_index == FloorExplo
			{
				instance_create(x,y,HandTrailSmall)
			}
			else
			{
				instance_create(x,y,HandTrail)
			}
		}
		else
		{
			with corrosion
			{
				alarm[0] = 60;
				alarm[2] = 1;
			}
		}
	}
}
ds_list_destroy(floors);
alarm[6] = 1;