event_inherited()

//Spin crystals
var ds = 0;
if ds_exists(myCrystals,ds_type_list)
	ds = ds_list_size(myCrystals);
var attacking = alarm[3] > 0;
if ds > 0 
{
	var tx = x;
	var ty = y;
	var as = angleStep;
	var intro = alarm[2] > 0;
	if intro || attacking
	{
		if intro
			gunangle += 20;
		if ((alarm[2] < 20 || attacking) && crystalDis < maxCrystalDis)
			crystalDis += 2;
		else if isCursed && !attacking && random(10) < 1
		{
			gunangle += choose(60,120,-60,-120);	
		}
	}
	else if !attacking
		gunangle += 5;
	var oDir = gunangle;
	var l = crystalDis
	for (var i = 0; i < ds; i++) {
		with myCrystals[| i]
		{
			x += ((tx + lengthdir_x(l,oDir))-x)*0.7;
			y += ((ty + lengthdir_y(l,oDir))-y)*0.7;
			if attacking
			{
				alarm[1] += 2;
				alarm[2] = 0;
				alarm[4] = 0;//cursed no teleport
				with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
				{
					motion_add(random(360),1+random(1))
					alarm[0] = 2+random(4)
				}
				
				if sprite_index != spr_hurt
					sprite_index = spr_fire
			} else if intro
			{
				alarm[1] += 1;	
			}
			var walls = ds_list_create();
			var al = instance_place_list(x,y,Wall,walls,false)
			for (var j = 0; j < al; j++) {
				with walls[| j]
				{
					instance_destroy(id,false);
					instance_create(x,y,FloorExplo);
				}
			}
			ds_list_destroy(walls);
			//Almost dead lose it
			if other.easyCrystalLoss && my_health < maxhealth * 0.3
			{
				ds_list_set(other.myCrystals,i,noone);
			}
		}
		oDir += as;
	}
}

if !attacking
	motion_add(direction,0.5)

if speed > maxSpeed
speed = maxSpeed

if !instance_exists(Player) && sndtaunt = 0
{
	tauntdelay += 1
	if tauntdelay > 50
	{
		snd_play_2d(sndHyperCrystalTaunt);
		sndtaunt = 1
	}
}