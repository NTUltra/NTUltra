mediumchest=0;
shadowSprite = shd24;
ammoValue = 1.5;
chestValue = 1;
if instance_exists(Player) && Player.ultra_got[26]==1 && object_index != GiantGoldenAmmoChest
{
	mediumchest=1;
}
if mediumchest==1
	sprite_index=sprMediumAmmoChest;
else if object_index != AmmoChestMystery && object_index != GiantGoldenAmmoChest
{
	if instance_exists(Player)
	{
		if !scrIsGamemode(25) && (random(5) < 1) && !place_meeting(x,y,Player) && !(Player.area == 9 && Player.subarea == 3) && !instance_exists(SurvivalWave) && Player.area != 119 && Player.area != 120 && Player.area != 2 && Player.area != 137 && Player.area != 139  && Player.area != 140
		{
			var pt = Player.wep_type[Player.wep];
			var bt = Player.wep_type[Player.bwep];
			var part = 0.5;
			if Player.skill_got[10]
				part = 0.75;
			if (pt == 0 || Player.ammo[pt] > Player.typ_amax[pt] * part) && (bt == 0 || Player.ammo[bt] > Player.typ_amax[bt] * part)
			{
				instance_destroy(id,false);
				instance_create(x,y,AmmoChestMystery);
				exit;
			}
		}
	}
}


event_inherited()


