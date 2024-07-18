/// @description Release
if KeyCont.key_spec[0] != 1 and KeyCont.key_spec[0] != 2 && instance_exists(creator)
{
	alienIntestines += creator.alienIntestines;
	event_user(0);
	creator.alienIntestines = 0;
}