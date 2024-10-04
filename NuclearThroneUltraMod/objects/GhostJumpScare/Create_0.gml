alarm[0] = 140 + irandom(60);
with enemy
{
	if team != 2
	{
		ds_list_add(UberCont.keepDeactive,id);
		instance_deactivate_object(id);	
	}
}