/// @description Idk what alarms enemy use so there ya go
if myEnemy != noone && instance_exists(myEnemy)
{
	instance_destroy();
	exit;
}
if speed > 1
	alarm[0] = 2;
else
{
	with myEnemy
	{
		var hitWalls = ds_list_create();
		var amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
		if amountOfWalls > 0
		{
			while(amountOfWalls > 0)
			{
				for (var i = 0; i < amountOfWalls; i++) {
					with hitWalls[| i] {
						instance_destroy();
					}
					with hitWalls[| i] {
						instance_create(x,y,FloorExplo);
					}
				}
				ds_list_clear(hitWalls);
				amountOfWalls = instance_place_list(x,y,Wall,hitWalls,false);
			}
		}
		ds_list_destroy(hitWalls);
	}
	instance_destroy();
}