/// @description lets go
if instance_exists(VoidSeer)
{
	instance_create(x,y,Dust);
	repeat(3)
		instance_create(x,y,Debris);
	instance_destroy();
	exit;
}
if sprite_index != sprAmmoChestOpen
	exit;

alarm[0] = 60;
if instance_exists(Player) && !instance_exists(AmmoChest) && instance_exists(enemy)
{
	var wep = Player.wep;
	var t = Player.wep_type[wep];
	var ammo = Player.ammo[t];
	var cost = Player.wep_cost[wep];
	var bwep = Player.bwep;
	var bt = Player.wep_type[bwep];
	var bammo = Player.ammo[bt];
	var bcost = Player.wep_cost[bwep];
	if t != 0 && ammo < cost && (Player.bwep == 0 || (bt != 0 && bammo < bcost))
	{
		instance_destroy()
		instance_create(x,y,AmmoChest);
		with ChestOpen
		{
			alarm[0] = 0;	
		}
	}
}