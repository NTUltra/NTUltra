/// @description Spawn in enemies
if !instance_exists(Player)
{
	alarm[1] = 10;
	exit;
}
if place_meeting(x,y,Player) && spawnDelayed < 6
{
	alarm[1] = 30;
	spawnDelayed ++;
	exit;
}
	BackCont.shake += 30;
snd_play(sndExplosionL);
snd_play(sndPortalOld);

image_angle = choose(0,90,180,270);
var al = array_length(whatToSpawn);
for (var i = 0; i < al; i++)
{
	var xx = x+random_range(128,-128);
	var yy = y+random_range(128,-128);
	var tries = 0;
	while ((!collision_point(xx,yy,Floor,false,false) || collision_point(xx,yy,Wall,false,false)) && tries < 1000)
	{
		xx = x+random_range(128,-128);
		yy = y+random_range(128,-128);
		tries ++;
	}
	with instance_create(xx,yy,whatToSpawn[i])
	{
		if alarm[1] > 2
		{
			scrSleepyPopo();
			alarm[1] *= 0.4;
		}
		instance_create(x,y,WallBreak);
	}
}
var fs = floorA;
var fsb = floorB;
var fse = floorE;

scrActivateAllOutOfRange();
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
			if fse == sprFloor7Explo
				alarm[1] = irandom(90);
			else
				alarm[1] = 0;
				
		}
	}
}
ds_list_destroy(floors);
image_xscale = 1;
image_yscale = 1;

//Reset stuff
image_angle = 90;
//instance_destroy();