/// @description Explode crystals
if !ds_exists(myCrystals,ds_type_list)
	exit;
var ds = ds_list_size(myCrystals);
var am = 7;
var astep = 360/7;
var ang = 0;
snd_play(sndHyperCrystalRelease);
for (var i = 0; i < ds; i++) {
	with myCrystals[| i]
	{
		my_health = 0;
		instance_create(x,y,BigWallBreak);
		sprite_index = spr_fire
		if object_index == LightningCrystal
		{
			repeat(am)
			{
				with instance_create(x,y,Lightning)
				{
					image_angle = ang+random(6)-3;
					team = other.team
					ammo = 12;
					accuracy=30;
					event_perform(ev_alarm,0)
					with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
				}
				ang += astep;
			}
		}
		else
		{
			repeat(am)
			{
				with instance_create(x,y,EnemyLaser)
				{
					image_angle = ang+random(6)-3
					team = other.team
					event_perform(ev_alarm,0)
				}
				ang += astep;
			}
		}
	}
}
ds_list_clear(myCrystals);