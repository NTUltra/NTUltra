/// @description Kill floors
alarm[4] = 30;
if instance_exists(GenCont) || instance_exists(LevCont)
{
	exit;	
}
else
{
	var msk = mask_index;
	mask_index = mskPitInside;
	var floors = ds_list_create();
	var al = instance_place_list(x,y,FloorExplo,floors,false);
	for (var i = 0; i < al; i++)
	{
		with floors[| i] {
			instance_destroy(id,false);
			instance_create(x,y,WallHitMe);
		}
	}
	mask_index = msk;
}
