alarm[0] = 50 + irandom(40);
with enemy
{
	if team != 2
	{
		ds_list_add(UberCont.keepDeactive,id);
		instance_deactivate_object(id);	
	}
}