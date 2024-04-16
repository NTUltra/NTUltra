/// @description init
event_inherited();
accuracy = 1;
suckedProjectiles = ds_list_create();
projectileSpeed = 12;
maxRange = 30;
wkick = 4;
if instance_exists(Player)
	accuracy = Player.accuracy;