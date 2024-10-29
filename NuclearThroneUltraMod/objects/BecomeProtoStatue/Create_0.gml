maxhealth = 12//80
mySize = 2
if GetPlayerLoops() > 0
	maxhealth += 15;
spr_idle = sprPStat1Idle
spr_hurt = sprPStat1Hurt
spr_dead = sprPStatDead
alarm[1] = 1;
event_inherited()
maxSpeed = 0;
canMoveOver = true;
team=1;
name = "";
snd_hurt = sndStatueHurt
snd_dead = sndBecomeProtoStatueDead
if scrIsGamemode(10)
{
	instance_destroy(id,false);
	exit;
}
instance_create(x-16,y-16-32,Floor)
instance_create(x-16,y-16+32,Floor)
instance_create(x-16-32,y-16,Floor)
instance_create(x-16+32,y-16,Floor)
instance_create(x-16-32,y-16-32,Floor)
instance_create(x-16-32,y-16+32,Floor)
instance_create(x-16+32,y-16-32,Floor)
instance_create(x-16+32,y-16+32,Floor)


scrForcePosition60fps();
var msk = mask_index;
mask_index = mskPortalOpenWallBreak;
var walls = ds_list_create();
var al = instance_place_list(x,y,WallHitMe,walls,false);
for(var i = 0; i < al; i++)
{
	with walls[| i] {
		instance_destroy(id,false);	
		instance_create(x,y,FloorExplo)
	}
}
ds_list_destroy(walls);

with Floor{
	if point_distance(x+16,y+16,other.x,other.y) < 34
	sprite_index = sprFloor100
}

y -= 16;
ystart = y;
var fuks = ds_list_create();
var al = instance_place_list(x,y,enemy,fuks,false);
for(var i = 0; i < al; i++)
{
	with fuks[| i] {
		x += random_range(128,256)*choose(1,-1)
		y += random_range(128,256)*choose(1,-1)
		scrTeleportToFloor();
	}
}
ds_list_destroy(fuks);

var interactables = ds_list_create();
var al = instance_place_list(x,y,Interactable,interactables,false);
for(var i = 0; i < al; i++)
{
	with interactables[| i] {
		x += random_range(128,256)*choose(1,-1)
		y += random_range(128,256)*choose(1,-1)
		scrTeleportToFloor();
	}
}
ds_list_destroy(interactables);

var props = ds_list_create();
var al = instance_place_list(x,y,prop,props,false);
for(var i = 0; i < al; i++)
{
	with props[| i] {
		x += random_range(128,256)*choose(1,-1)
		y += random_range(128,256)*choose(1,-1)
		scrTeleportToFloor();
	}
}
ds_list_destroy(props);
mask_index = msk;
canBeMoved = false;
canBeAngled = false;