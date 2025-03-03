/// @description init
event_inherited();
snd = sndMicroSmg;
aimOffset = 0;
effects = true;
ultramodded = false;
accuracy = 1;
if instance_exists(Player)
	accuracy = Player.accuracy;