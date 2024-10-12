/// @description Long range earthquacke
if target != noone && instance_exists(target)
{
	var floors = ds_list_create();
	var al = collision_circle_list(target.x,target.y,116,Floor,false,false,floors,false);
	if mode == 1
	{
		for (var i = 0; i < al; i++)
		{
			if choose(true,true,false)
				with floors[| i] {
					var o = 16;
					if object_index != FloorExplo
					{
						instance_create(x + o,y + o,AboutToGas)
					}
				}
		}
		snd_play_2d(sndAboutToGas);
		BackCont.shake += 5;
		forceAnimation = spr_fire_toxic;
		sprite_index = spr_fire_toxic;
		image_index = 0;
	}
	else if mode == 0
	{
		var t = team;
		for (var i = 0; i < al; i++)
		{
			if choose(true,true,false)
				with floors[| i] {
				
					if object_index != FloorExplo
					{
						with instance_create(x,y,AboutToEarthQuacke)
						{
							team = t;
						}
					}
				}
		}
		BackCont.shake += 10;
		forceAnimation = spr_fire;
		sprite_index = spr_fire;
		image_index = 0;
	}
	ds_list_destroy(floors);
}
alarm[1] += actTime * 3;