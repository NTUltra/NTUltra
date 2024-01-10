/// @description End pause
with UberCont
{
	isPausedInTheDark = false;
	instance_activate_all();
	var al = ds_list_size(keepDeactive);
	for (var i = 0; i < al; i++) {
		instance_deactivate_object(keepDeactive[| i]);	
	}
}
if instance_exists(Player) || instance_exists(PlayerSpawn)
with DataRef
	instance_destroy();