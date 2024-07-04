/// @description Init

// Inherit the parent event
event_inherited();
if instance_exists(UberCont) && !UberCont.unlocked_alt_routes
{
	instance_destroy(id,false);
	exit;
}
canMoveOver = true;
isInteractableNow = false;
explainTimer = 0;
alarm[6] = 5;