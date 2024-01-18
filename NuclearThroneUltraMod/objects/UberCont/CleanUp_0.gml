/// @description Clean up maps and lists
if isLeaderboardGamemode
{
	opt_gamemode = [0];	
}
scrSave();
ds_list_destroy(keepDeactive);