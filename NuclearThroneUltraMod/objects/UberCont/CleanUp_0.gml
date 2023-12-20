/// @description Clean up maps and lists
if isWeekly
{
	opt_gamemode = [0];	
}
scrSave();
ds_list_destroy(keepDeactive);