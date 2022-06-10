/// @description lets go
if sprite_index != sprAmmoChestOpen
	exit;

alarm[0] = 30;
if instance_exists(Player) && !instance_exists(AmmoChest)
{
	var wep = Player.wep;
	var t = Player.wep_type[wep];
	var ammo = Player.ammo[t];
	var cost = Player.wep_cost[wep];
	var bwep = Player.wep;
	var bt = Player.wep_type[bwep];
	var bammo = Player.ammo[bt];
	var bcost = Player.wep_cost[bwep];
	if t != 0 && ammo < cost && bt != 0 && bammo < bcost
	{
		instance_destroy()
		instance_create(x,y,AmmoChest)
	}
}