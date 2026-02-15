/// @description Unlock second starting weapons
event_inherited();
if instance_exists(Player) && !UberCont.secondary_start_wep[Player.race]
with UberCont
{
	secondary_start_wep[Player.race] = 1;
	scrSave();
}
with instance_create(x,y,PopupText)
{
	mytext = "SECONDARY STARTING WEAPON UNLOCKED FOR\n" + Player.race_name[Player.race];
	theColour = c_lime;
	vspeed = -1;
	alarm[1] = 60;
}
event_user(1);