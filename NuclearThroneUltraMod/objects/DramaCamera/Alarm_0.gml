instance_destroy()
with UberCont
{
	instance_activate_all();
	var al = ds_list_size(keepDeactive);
	for (var i = 0; i < al; i++) {
		instance_deactivate_object(keepDeactive[| i]);	
	}
	alarm[4] = 0;
	alarm[5] = 0;
	alarm[3] = 1;
	isPaused = 0
	instance_create(x,y,UnPauseDelay);
	isPausedInTheDark = false;
}