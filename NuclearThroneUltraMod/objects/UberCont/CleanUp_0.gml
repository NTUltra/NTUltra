/// @description Clean up maps and lists
if isLeaderboardGamemode
{
	opt_gamemode = [opt_default_gm];	
}
if canSave
	scrSave();
ds_list_destroy(keepDeactive);
if sprite_exists(pauseimg)
	sprite_delete(pauseimg);
if sprite_exists(pauseDark)
	sprite_delete(pauseDark);