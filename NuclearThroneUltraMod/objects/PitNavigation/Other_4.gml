/// @description Alarm
alarm[0] = 90;
if instance_exists(Player)
	currentArea = Player.area;
else if instance_exists(PlayerSpawn)
	currentArea = PlayerSpawn.area;
else if instance_exists(BackCont) {
	currentArea = BackCont.area;
}
else {
	currentArea = UberCont.area;
}
if currentArea == 141
	persistent = false;