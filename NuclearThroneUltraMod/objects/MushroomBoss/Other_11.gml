/// @description Long range earthquacke
if target != noone && instance_exists(target)
{
	var floors = ds_list_create();
	var al = collision_circle_list(target.x,target.y,96,Floor,false,false,floors,false);
	if mode == 1
	{
		for (var i = 0; i < al; i++)
		{
			with floors[| i] {
				var o = 16;
				if object_index == FloorExplo
					o = 8;
				instance_create(x + o,y + o,AboutToGas)
			}
		}
	}
}