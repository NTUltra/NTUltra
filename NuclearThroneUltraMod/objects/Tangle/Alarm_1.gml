/// @description Projectile collision
alarm[1] = 1;
if instance_exists(Player)
	exit;
var projs = ds_list_create();
var al = instance_place_list(x,y,projectile,projs,false);
if Player.ultra_got[20] && !Player.altUltra//plant STEREO ultra D
{
	for (var i = 0; i < al; i ++) {
		with projs[| i]
		{
			if object_index == ToxicGas || object_index == TrapFire
			{
				x = xprevious
				y = yprevious
			}
			else if team != Player.team && canBeMoved
			{
				x -= xprevious*0.25;
				y -= yprevious*0.25;
			}
		}
	}
}
else
{
	for (var i = 0; i < al; i ++) {
		with projs[| i]
		{
			if object_index == ToxicGas || object_index == TrapFire
			{
				x = xprevious
				y = yprevious
			}
		}
	}
}
ds_list_destroy(projs);