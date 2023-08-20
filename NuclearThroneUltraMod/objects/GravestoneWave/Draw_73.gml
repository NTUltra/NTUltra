/// @description Radius
if alarm[0] < 1
{
	BackCont.shake += 0.5;
	draw_set_alpha(opacity);
	draw_circle_colour(x,y,radius,col2,col2,true);
	draw_circle_colour(x,y,radius+1,col,col,true);
	draw_circle_colour(x,y,radius+2,col2,col2,true);
	draw_set_alpha(1);
	var newcollision = ds_list_create();
	var al = collision_circle_list(x,y,radius,Gravestone,false,false,newcollision,false);
	for (var i = 0; i < al; i ++)
	{
		with newcollision[| i] {
			my_health = 0;
			with instance_create(x + random(10) - 5,y + random(10) - 5,Curse)
				depth = other.depth-1;
			instance_create(x,y,Flicker);
		}
	}
	ds_list_destroy(newcollision);
	if radius > 140
	{
		radius += 5;
		opacity -= 0.1;
		if opacity < 0
		{
			visible = false;
			alarm[0] = 60;
			//New graves
			var newGraves = ds_list_create();
			var al = collision_circle_list(x,y,radius,Floor,false,false,newGraves,false);
			for (var i = 0; i < al; i ++)
			{
				with newGraves[| i] {
					if object_index != FloorExplo && random(10) < 1 && !place_meeting(x,y,Wall) && !place_meeting(x,y,InactiveRerollStation) && !place_meeting(x,y,prop)
					{
						instance_create(x+16,y+16,Gravestone)
						with instance_create(x + random(10) - 5,y + random(10) - 5,Curse)
							depth = other.depth-1;
						instance_create(x+16,y+16,Flicker);
					}
				}
			}
			ds_list_destroy(newGraves);
		}
	}
	else
	{
		radius *= 1.08;
	}
}