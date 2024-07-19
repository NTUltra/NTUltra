/// @description Cleanup list
if ds_exists(forcePositions, ds_type_list)
	ds_list_destroy(forcePositions);