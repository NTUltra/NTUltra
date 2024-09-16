/// @description init
event_inherited();
aimOffset = 0;
ultramodded = false;
accuracy = 1;
maxAmmo = 6;
if instance_exists(Player)
	accuracy = Player.accuracy;