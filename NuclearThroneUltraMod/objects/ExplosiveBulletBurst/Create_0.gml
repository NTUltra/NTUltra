/// @description init
event_inherited();
snd = sndMachinegun;
ultramodded = false;
accuracy = 1;
aimOffset = 0;
if instance_exists(Player)
	accuracy = Player.accuracy;