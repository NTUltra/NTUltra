/// @description Run the game again
instance_activate_all();
with UberCont
{
	var al = ds_list_size(keepDeactive);
	for (var i = 0; i < al; i++) {
		instance_deactivate_object(keepDeactive[| i]);
	}
	isPausedInTheDark = false
}
alarm[1] = 2;