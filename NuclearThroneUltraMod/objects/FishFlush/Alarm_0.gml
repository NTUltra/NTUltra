/// @description Collision
alarm[0] = 1;
if !ending
{
	if image_xscale < targetScale
	{
		image_xscale += scaling;
		image_yscale += scaling;
		alarm[1] += 1;
	}
	else
	{
		image_xscale = targetScale;
		image_yscale = targetScale;
	}
}
var actualScale = image_xscale;
if instance_exists(FishFlush) && FishFlush.image_index < 5
{
	image_xscale = targetScale;
	image_yscale = targetScale;
}
var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false);
for (var i = 0; i < al; i ++) {
	with hits[| i]
	{
		if team != 2
		{
			motion_add(other.direction,5);
			direction = other.direction;
		}
	}
	
}
ds_list_destroy(hits);
var projs = ds_list_create();
al = instance_place_list(x,y,projectile,projs,false);
for (var i = 0; i < al; i ++) {
	with projs[| i]
	{
		if canBeMoved
		{
			var spd = speed;
			motion_add(other.direction,5);
			if spd > 18
				speed = spd;
			else
				speed = spd + 1;
			image_angle = direction;
		}
	}
	
}
ds_list_destroy(projs);
var shield = ds_list_create();
al = instance_place_list(x,y,HandBlock,shield,false);
for (var i = 0; i < al; i ++) {
	with shield[| i]
	{
		motion_add(other.direction,1);
		direction = other.direction;
	}
	
}
ds_list_destroy(shield);
image_xscale = actualScale;
image_yscale = actualScale;
var xo = x + lengthdir_x(32*image_xscale,direction + 180);
var yo = y + lengthdir_y(32*image_xscale,direction + 180);
xo += lengthdir_x(32*image_yscale,direction+90);
yo += lengthdir_y(32*image_yscale,direction+90);
var hstep = 32;
var vstep = 24;
var s = max(2,6*image_xscale);
var hz = max(2,ceil((128*image_xscale)/hstep));
var vz = max(2,ceil((64*image_yscale)/vstep));
var noWall = false;
noWall = !instance_exists(Wall);
fishBoost = FishBoost;
if !noWall
	fishBoost = FishBoostFloorStayer
repeat(vz)
{
	var xx = xo;
	var yy = yo;
	repeat(hz)
	{
		if noWall || collision_point(xx,yy,Floor,false,false)
			with instance_create_depth(xx,yy, 6, fishBoost)
			{
				motion_add(other.direction,s);
			}
		xx += lengthdir_x(hstep,direction);
		yy += lengthdir_y(hstep,direction);
	}
	xo += lengthdir_x(vstep,direction-90);
	yo += lengthdir_y(vstep,direction-90);
}

if alarm[1] < 10
{
	ending = true;
	image_xscale -= scaling;
	image_yscale = image_xscale;
	with mySound
	{
		var volume = audio_emitter_get_gain(emitter)*0.9;
		audio_emitter_gain(emitter, volume);
	}
}