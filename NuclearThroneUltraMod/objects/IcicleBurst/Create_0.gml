/// @description init
event_inherited();
aimOffset = 0;
ultramodded = false;
accuracy = 1;
shake = 2;
accuracyRange = 18;
if instance_exists(Player)
	accuracy = Player.accuracy;