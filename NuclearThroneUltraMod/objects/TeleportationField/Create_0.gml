/// @description FIELD!
if instance_number(TeleportationField) < 2
{
	alarm[0] = 60;
	alarm[1] = 30;
}
number = instance_number(TeleportationField);
image_speed = 0.4;
team = 2;
range = 32;
rotation = 5;
image_angle = random(360);
middleAngle = random(360);
outerAngle = random(360);
myMovedEntities = [];
teleportMyEntities = function(range, otherTeleport, movedEntities)
{
	var hits = ds_list_create();
	var al = collision_circle_list(x,y,range,hitme,false,false,hits,false);
	for (var i = 0; i < al; i ++) {
		with hits[| i]
		{
			if object_index != Player
				movedEntities = scrTeleportField(otherTeleport, movedEntities);
		}
	
	}
	ds_list_destroy(hits);
	//ps = 2;
	var projs = ds_list_create();
	al = collision_circle_list(x,y,range,projectile,false,false,projs,false);
	for (var i = 0; i < al; i ++) {
		with projs[| i]
		{
			if canBeMoved
			{
				movedEntities = scrTeleportField(otherTeleport, movedEntities, false);
			}
		}
	}
	ds_list_destroy(projs);
	var chestProps = ds_list_create();
	al = collision_circle_list(x,y,range,chestprop,false,false,chestProps,false);
	for (var i = 0; i < al; i ++) {
		with chestProps[| i]
		{
			movedEntities = scrTeleportField(otherTeleport, movedEntities);
		}
	}
	ds_list_destroy(chestProps);

	var pickUps = ds_list_create();
	al = collision_circle_list(x,y,range,Pickup,false,false,pickUps,false);
	for (var i = 0; i < al; i ++) {
		with pickUps[| i]
		{
			movedEntities = scrTeleportField(otherTeleport, movedEntities);
		}
	}
	ds_list_destroy(pickUps);

	var radChests = ds_list_create();
	al = collision_circle_list(x,y,range,RadChest,false,false,radChests,false);
	for (var i = 0; i < al; i ++) {
		with radChests[| i]
		{
			movedEntities = scrTeleportField(otherTeleport, movedEntities);
		}
	}
	ds_list_destroy(radChests);

	var wepPickups = ds_list_create();
	al = collision_circle_list(x,y,range,WepPickup,false,false,wepPickups,false);
	for (var i = 0; i < al; i ++) {
		with wepPickups[| i]
		{
			movedEntities = scrTeleportField(otherTeleport, movedEntities);
		}
	}
	ds_list_destroy(wepPickups);
	return movedEntities;
}