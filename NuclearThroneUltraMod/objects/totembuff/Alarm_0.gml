/// @description Buff enemies
alarm[0] = 5;
var enemies = ds_list_create();
var al = instance_place_list(x,y,enemy,enemies,false);
for (var i = 0; i < al; i++)
{
	if enemies[| i].object_index != IDPDVan && enemies[| i].object_index != IDPDVanVertical && !array_contains(buffList,enemies[| i].id)
	{
		buffList[array_length(buffList)] = enemies[| i].id;
		with enemies[| i]
		{
			with instance_create(x,y-(sprite_height*0.5),HealFX)
			{
				depth = other.depth - 2;
			}
			if !totemBuffed {
				var healthBuff = min(150,maxhealth);
				my_health += healthBuff;
				maxhealth += healthBuff;
				raddrop *= 1.5;
				totemBuffed = true;
			} else {
				my_health += maxhealth*0.25;
				my_health = min(my_health,maxhealth);
			}
			if alarm[1] > 10
				alarm[1] -= 9;
			if alarm[1] > 5
				alarm[1] -= 4;
		}
	}
}
ds_list_destroy(enemies);