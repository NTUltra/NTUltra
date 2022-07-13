/// @description Spawn in a boss
if !instance_exists(Player)
	alarm[1] = 10;

	BackCont.shake += 30;

snd_play(sndPortalOld);

image_angle = choose(0,90,180,270);
with instance_create(x-spawnOffsetX,y-spawnOffsetY,whatToSpawn)
{
	if alarm[1] > 2
	{
		alarm[1] *= 0.5;
		scrSleepyPopo();
	}
	
}
var fs = floorA;
var fsb = floorB;
var fse = floorE;


//Make a nice floor
var s = clamp(instance_number(InvaderBossSpawnPortal)+0.2,0.25,1);
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
/*
instance_create(x + 32,y + 32,BigWallBreak);
instance_create(x,y + 32,BigWallBreak);
instance_create(x + 32,y,BigWallBreak);
instance_create(x - 32,y - 32,BigWallBreak);
instance_create(x,y - 32,BigWallBreak);
instance_create(x - 32,y,BigWallBreak);
instance_create(x,y,BigWallBreak);
instance_create(x - 32,y + 32,BigWallBreak);
instance_create(x + 32,y - 32,BigWallBreak);


instance_create(x + 64,y + 64,BigWallBreak);
instance_create(x,y + 64,BigWallBreak);
instance_create(x + 64,y,BigWallBreak);
instance_create(x - 64,y - 64,BigWallBreak);
instance_create(x,y - 64,BigWallBreak);
instance_create(x - 64,y,BigWallBreak);
instance_create(x,y,BigWallBreak);
instance_create(x - 64,y + 64,BigWallBreak);
instance_create(x + 64,y - 64,BigWallBreak);
*/

//Reset stuff
image_angle = 90;
instance_destroy();