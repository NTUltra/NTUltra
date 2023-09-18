///scrActivateImportant();
// /@description activates everything nearby, used to make sure floors and walls are checked within range even deactivated once
///@param range
function scrActivateImportant(){
	instance_activate_object(GameRender);
	instance_activate_object(UnlockPopup);
	if instance_exists(FPSHACK)
		instance_create(x,y,FPSHACKMenu);
	instance_activate_object(MusCont);
	instance_activate_object(Cursor);
}