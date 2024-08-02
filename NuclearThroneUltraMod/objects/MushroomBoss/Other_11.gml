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
				{
					o = 8;
					with instance_create(x + o,y + o,AboutToGas)
					{
						image_xscale = 0.75;
						image_yscale = image_xscale;
					}
				}
				else
				{
					instance_create(x + o,y + o,AboutToGas)
				}
			}
		}
		snd_play_2d(sndAboutToGas);
		BackCont.shake += 5;
	}
	else if mode == 0
	{
		var t = team;
		for (var i = 0; i < al; i++)
		{
			with floors[| i] {
				if object_index == FloorExplo
				{
					with instance_create(x,y,AboutToEarthQuackeSmall)
					{
						team = t;
					}
				}
				else
				{
					with instance_create(x,y,AboutToEarthQuacke)
					{
						team = t;
					}
				}
			}
		}
		BackCont.shake += 10;
	}
}