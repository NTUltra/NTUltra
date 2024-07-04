/// @description Deactivate
debug("all be gone");
with all
{
	if (//object_index != BackCont && 
		//object_index != TopCont &&
		object_index != Cursor &&
		object_index != UberCont &&
		object_index != FPSHACK &&
		object_index != KeyCont &&
		object_index != GameRender &&
		object_index != MusCont &&
		id != other.id &&
		object_index != UberCont)
	{
		instance_destroy(id,false);	
	}
}
with UberCont
{
	ds_list_clear(keepDeactive);
	instance_activate_all();
}
alarm[5] = 1;