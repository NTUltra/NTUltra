/// @description init
event_inherited();
accuracy = 1;
suckedProjectiles = ds_list_create();
if instance_exists(Player)
	accuracy = Player.accuracy;