/// @description Go create the shit
if !instance_exists(Player)
{
	alarm[2] = 5;
	exit;
}
SetSeed();
var tx = round(Player.x/32)*32;
var ty = round(Player.y/32)*32;
with Tangle
{
	instance_destroy();	
}
with TrapScorchMark
{
	instance_destroy();	
}
with FX
{
	instance_destroy(id,false);	
}
with WeaponMod
{
	instance_destroy(id,false);	
}
with WallHitMe
{
	instance_destroy(id,false);
}
with Floor
{
	instance_destroy(id,false);
}
with Top
{
	instance_destroy(id,false);
}
with TopSmall
{
	instance_destroy(id,false);
}
with TopDecal
{
	instance_destroy(id,false);
}
with Bones
{
	instance_destroy(id,false);
}
with Corpse
{
	instance_destroy();	
}
with chestprop
{
	instance_destroy(id,false);	
}
with ChestOpen
{
	instance_destroy();	
}
with prop
{
	instance_destroy(id,false);	
}
with Friend
{
	alarm[4] = 1;
}
with projectile
{
	instance_destroy(id,false);	
}
with Traps
{
	instance_destroy(id,false);	
}
var s = 150;
if currentArea == 125//Make inv mansion a little bigger
	s += 10;
if currentArea == 107//Final area is  bigger
	s += 20;
var prevA = 141;
with Player
{
	alarm[3] = max(alarm[3],15);
	subarea = 1;
	prevA = area;
	area = other.currentArea;
}
forceDirection = true;
with instance_create(tx,ty,FloorMaker)
{
	globalGoal = s;
	goal = s;
	event_perform(ev_alarm,0);
}
instance_create(x,y,AreaResetter);
snd_play_2d(sndLastEnemy);
with WepPickup
{
	scrTeleportToFloor();
}
with CorpseCollector
{
	surface_free(surf);
	ds_list_clear(corpses);
	disappearTime = 5;
	visible = true;
	alarm[1] = 0;
	alarm[2] = 0;
}
with BGFXLayer
{
	surface_free(surf);
	ds_list_clear(drawer);
	alarm[2] = 0;
}
with Pickup
{
	if !collision_point(x,y,Floor,false,false)
		instance_destroy(id,false);
}
BackCont.shake += 100;
scrPopulate();
if scrIsGamemode(40)
	scrPopEnemies1vs1(Player.area, Player.subarea, Player.loops);
with Bones
{
	depth = y*-1;
}
//Backgrounding
if scrIsCrown(25)
{
	switch (currentArea)
	{
		case 125:
			__background_set_colour( make_color_rgb(20,44,51) )
		break;
		case 106:
			__background_set_colour( make_color_rgb(74,112,117) )
		break;
		case 111:
			__background_set_colour( make_color_rgb(74,102,40) )
		break;
		case 124:
			__background_set_colour( make_color_rgb(37,41,51) )
		break;
		case 108:
			__background_set_colour( make_color_rgb(0,255,255) )
		break;
		case 112:
			__background_set_colour( make_color_rgb(24,51,26) )
		break;
		case 107:
			__background_set_colour( make_color_rgb(157,150,149) )
		break;
	}
}
else
{
	switch (currentArea)
	{
		case 125:
			__background_set_colour( make_color_rgb(178,149,124) )
		break;
		case 106:
			__background_set_colour( make_color_rgb(194,176,163) )
		break;
		case 111:
			__background_set_colour( make_color_rgb(138,186,79) )
		break;
		case 124:
			__background_set_colour( make_color_rgb(63,38,76) )
		break;
		case 108:
			__background_set_colour( make_color_rgb(220,240,240) )
		break;
		case 112:
			__background_set_colour( make_color_rgb(246,228,224) )
		break;
		case 107:
			__background_set_colour( make_color_rgb(75,66,58) )
		break;
	}
}
event_user(1);
with Player
{
	if place_meeting(x,y,WallHitMe)
	{
		scrTeleportToFloor();
	}
	area = prevA;
}