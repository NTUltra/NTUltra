/// @description Radius
if alarm[0] < 1
{
	var wowie = GetPlayerLoops() > 0;
	BackCont.shake += 0.5;
	draw_set_alpha(opacity);
	draw_circle_width_colour(x,y,radius,1,col2);
	draw_circle_width_colour(x,y,radius+1,1,col);
	draw_circle_width_colour(x,y,radius+2,1,col2);
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
			BackCont.shake += 0.25;
			if wowie
			{
				with instance_create(x,y,EnemyHomingTriangle)
				{
					motion_add(random(360),2);
					image_angle = direction
					team = 1;
				}
			}
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
					if object_index != FloorExplo && random(10) < 1 && !place_meeting(x,y,Wall) && !place_meeting(x,y,InactivePatienceStation) && !place_meeting(x,y,prop)
					{
						instance_create(x+16,y+16,Gravestone)
						with instance_create(x + random(10) - 5,y + random(10) - 5,Curse)
							depth = other.depth-1;
						instance_create(x+16,y+16,Flicker);
						BackCont.shake += 0.25;
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