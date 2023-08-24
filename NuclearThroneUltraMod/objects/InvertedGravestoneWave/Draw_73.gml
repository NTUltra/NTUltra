/// @description Radius
if alarm[0] < 1
{
	BackCont.shake += 0.5;
	draw_set_alpha(opacity);
	draw_circle_colour(x,y,radius,col2,col2,true);
	draw_circle_colour(x,y,radius+1,col,col,true);
	draw_circle_colour(x,y,radius+2,col2,col2,true);
	draw_set_alpha(1);
	var pe = instance_exists(Player);
	var newcollision = ds_list_create();
	var al = collision_circle_list(x,y,radius,InvertedGravestone,false,false,newcollision,false);
	for (var i = 0; i < al; i ++)
	{
		with newcollision[| i] {
			my_health = 0;
			instance_create(x,y,Flicker);
			BackCont.shake += 0.3;
			if (pe && point_distance(x,y,Player.x,Player.y) > 32)
			{
				snd_play(sndScorpionFire);
				var ang = 0
				var am = 8;
				var angStep = 360 / am
				repeat(am)
				{
					with instance_create(x,y,EnemyBullet2)
					{
						motion_add(ang,2)
						image_angle = direction
						team = 1;
					}
					ang += angStep;
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
					if object_index != FloorExplo && random(10) < 1 && !place_meeting(x,y,Wall) && !place_meeting(x,y,InactiveRerollStation) && !place_meeting(x,y,prop)
					{
						instance_create(x+16,y+16,InvertedGravestone)
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