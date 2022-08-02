/// @description Spawn in enemies
if !instance_exists(Player)
	alarm[1] = 10;

	BackCont.shake += 30;
snd_play(sndExplosionL);
snd_play(sndPortalOld);

image_angle = choose(0,90,180,270);
var al = array_length(whatToSpawn);
for (var i = 0; i < al; i++)
{
	with instance_create(x+random_range(128,-128),y+random_range(128,-128),whatToSpawn[i])
	{
		if alarm[1] > 2
		{
			alarm[1] *= 0.5;
			scrSleepyPopo();
		}
		instance_create(x,y,WallBreak);
	}
}
var fs = floorA;
var fsb = floorB;
var fse = floorE;


//Make a nice floor
var s = clamp(instance_number(InvaderInversionSpawnPortal)+0.2,0.25,1);
image_xscale/=s;
image_yscale/=s;
var floors = ds_list_create();
var al = instance_place_list(x,y,Floor,floors,false)
for (var i = 0; i < al; i++) {
	with floors[| i]
	{
		if styleb
		{
			sprite_index = fsb;	
		}
		else if object_index != FloorExplo
		{
			sprite_index = fs;
		}
		else
		{
			sprite_index = fse;
		}
	}
}
ds_list_destroy(floors);
image_xscale = 1;
image_yscale = 1;

//Reset stuff
image_angle = 90;
instance_destroy();