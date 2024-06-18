/// @description Collision
if instance_exists(Player)
{
	image_angle = point_direction(x,y,Player.x,Player.y);
	image_xscale = point_distance(x,y,Player.x,Player.y);
	var walls = ds_list_create();
	var al = instance_place_list(x,y,WallHitMe,walls,false);
	if al < 1
	{
		instance_destroy();
		exit;
	}
	for (var i = 0; i < al; i++)
	{
		with walls[| i]
		{
			instance_destroy();
			mask_index = mskPickupThroughWall;
			instance_create(x,y,WallWireFrame);
			if object_index == Wall
			{
				var newWall = instance_create(x,y,WallHitMe);
				with newWall {
					alarm[4] = 0;
				}
				ds_list_add(other.myWalls,newWall);
			}
			else
			{
				var newWall = instance_create(x,y,Wall);
				ds_list_add(other.myWalls,newWall);
			}
		}
	}
	ds_list_destroy(walls);
	/*
	var tops = ds_list_create();
	var al = instance_place_list(x,y,Top,tops,false)
	for (var i = 0; i < al; i++)
	{
		//instance_deactivate_object(tops[| i])
		with tops[| i]
		{
			instance_destroy();
		}
	}
	ds_list_destroy(tops);
	var topDecals = ds_list_create();
	var al = instance_place_list(x,y,TopDecal,topDecals,false)
	for (var i = 0; i < al; i++)
	{
		//instance_deactivate_object(tops[| i])
		with topDecals[| i]
		{
			instance_destroy();
		}
	}
	ds_list_destroy(topDecals);
	*/
}