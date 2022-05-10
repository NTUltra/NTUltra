mediumchest=0;
shadowSprite = shd24;
if instance_exists(Player)
{
	if UberCont.opt_gamemode != 25 && random(4) < 1 && !place_meeting(x,y,Player) && !(Player.area == 9 && Player.subarea == 3) 
	{
		instance_destroy(id,false);
		instance_create(x,y,AmmoChestMystery);
		exit;
	}
}
else if !instance_exists(SurvivalWave) && random(4) < 1
{
	instance_destroy(id,false);
	instance_create(x,y,AmmoChestMystery);
	exit;
}


event_inherited()
if instance_exists(Player) && Player.ultra_got[26]==1
{
mediumchest=1;
}
if mediumchest==1
sprite_index=sprMediumAmmoChest;

