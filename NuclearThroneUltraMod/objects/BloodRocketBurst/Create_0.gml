/// @description init
event_inherited();
snd = sndMachinegun;
ultramodded = false;
accuracy = 1;
shake = 6;
aimOffset = 0;
accuracyRange = 16;
if instance_exists(Player)
	accuracy = Player.accuracy;