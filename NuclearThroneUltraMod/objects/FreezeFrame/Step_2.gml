/// @description Deactivate
if alarm[1] <= 0 && alarm[0] < 1
{
	instance_deactivate_all(true);
	instance_activate_object(Cursor);
}