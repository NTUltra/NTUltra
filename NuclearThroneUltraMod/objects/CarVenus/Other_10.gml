/// @description Focking fix

//MAGIC REPAIR
if instance_exists(Player)
{
if Player.wep = 53|| (Player.race=7&&Player.bwep=53)
{
instance_create(x,y,CarVenusFixed)
instance_change(Wind,false)
}
}

