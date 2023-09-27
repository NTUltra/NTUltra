/// @description Move the hitmes
var enemies = ds_list_create();
var al = instance_place_list(x,y,enemyCollisionWall,enemies,false)
for (var j = 0; j < al; j++) {
	with enemies[| j]
	{
		x -= hspeed;
		y -= vspeed;
		direction += 180;
	}
}
ds_list_destroy(enemies);
alarm[1] = 1;