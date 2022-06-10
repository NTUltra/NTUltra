if sprite_index = sprAmmoChestOpen and instance_exists(Player)
{
	if Player.ammo[Player.wep_type[Player.wep]] <= 0 and Player.ammo[Player.wep_type[Player.bwep]] <= 0 and Player.wep_type[Player.wep] != 0 and Player.wep_type[Player.bwep] != 0
	{
		instance_destroy()
		instance_create(x,y,AmmoChest)
	}
}
