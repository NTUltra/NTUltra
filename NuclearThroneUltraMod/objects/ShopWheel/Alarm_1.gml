/// @description Pause
with UberCont
{
	with Player {
		scrCreateDataRef();
		DataRef.my_health = my_health;
		DataRef.lsthealth = lsthealth;
	}
	instance_deactivate_all(1)
	instance_activate_object(DataRef);
	instance_activate_object(ShopWheel);
	instance_activate_object(ShopItem);
	instance_activate_object(ShopSelector);
	scrActivateImportant();
}