/// @description Deactivate
/*
if alarm[1] <= 0 && alarm[0] < 1
{
	instance_deactivate_all(true);
	instance_activate_object(Cursor);
	instance_activate_object(DramaCamera);
}*/
if alarm[1] < 1
{
	if canDisable
	{
		instance_deactivate_all(true);
		instance_activate_object(Cursor);
		instance_activate_object(DramaCamera);
	}
	else
	{
		instance_activate_all();
		with UberCont
		{
			var al = ds_list_size(keepDeactive);
			for (var i = 0; i < al; i++) {
				instance_deactivate_object(keepDeactive[| i]);
			}
			isPausedInTheDark = false
		}
		instance_destroy();
	}
}