/// @description init
event_inherited();
snd = sndMachinegun;
aimOffset = 0;
ultramodded = false;
accuracy = 1;
if instance_exists(Player)
	accuracy = Player.accuracy;