/// @description Get out of lava
if instance_exists(GenCont)
	alarm[2] = 2;
var enems = ds_list_create();
var al = instance_place_list(x,y,enemyCollisionWall,enems,false);
for (var i = 0;i < al; i++)
{
	with enems[| i] {
		if !fireProof {
			hspeed -= 1;
			direction = 180;
			walk += 2;
		}
	}
}
var chests = ds_list_create();
var tries = 400;
do {
	ds_list_clear(chests);
	var al = instance_place_list(x,y,chestprop,chests,false);
	for (var i = 0;i < al; i++)
	{
		with chests[| i] {
			x -= 4;
		}
	}
	ds_list_clear(chests);
}
until (al < 1 || tries <= 0)
ds_list_destroy(chests);

with instance_place(x,y,Floor)
	instance_destroy();
alarm[2] = 2;