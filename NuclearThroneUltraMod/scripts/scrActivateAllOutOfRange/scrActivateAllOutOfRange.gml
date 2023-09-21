///scrActivateAllOutOfRange();
// /@description Activates floors walls that are normally deactivated because out of range
function scrActivateAllOutOfRange(){
	exit;
	instance_activate_object(Floor);
	instance_activate_object(Wall);
	instance_activate_object(enemy);
	instance_activate_object(Top);
	instance_activate_object(TopSmall);
}