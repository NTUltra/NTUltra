/// @description Reshape the world
var tx = round(Player.x/32)*32;
var ty = round(Player.y/32)*32;
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
	instance_destroy();	
}
with ChestOpen
{
	instance_destroy();	
}
with instance_create(tx,ty,FloorMaker)
{
	var s = 110;
	globalGoal = s;
	goal = s;
	event_perform(ev_alarm,0);
}
instance_create(x,y,AreaResetter);
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
with Floor
{
	scrPopulate();
	GenBones();
}
event_user(1);