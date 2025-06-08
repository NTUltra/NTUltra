/// @description init
event_inherited();
image_speed = 0.6;
ammo = 0;
maxAmmo = 0;
aimOffset = 0;
ultramodded = false;
accuracy = 1;
burstAim = 0;
if instance_exists(Player)
	accuracy = Player.accuracy;