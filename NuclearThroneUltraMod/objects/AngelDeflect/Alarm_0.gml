/// @description Deflect
alarm[0] = 5;
var projs = ds_list_create();
var al = instance_place_list(x,y,projectile,projs,false);
for (var i = 0; i < al; i++)
{
	var othr = projs[| i];
	if team != othr.team && instance_exists(Player)
	{
		if Player.speed > 0 && random(10) < Player.speed
		{
			if othr.isGrenade
			{
				snd_play(sndRicochet,0.1,true);
				with othr
					scrDeflectNade(point_direction(othr.x,othr.y,x,y));
			
			}
			else if othr.typ == 1
			{
				BackCont.shake += 1;
				othr.team = team
					with othr
					{
						event_user(15);
						snd_play(sndRicochet,0.1,true);
						if instance_exists(enemy)
						{
							var n = instance_nearest(x,y,enemy)
							direction = point_direction(x,y,n.x,n.y);
						}
						else
							direction = point_direction(othr.x,othr.y,x,y)
						speed *= 1.5;
						image_angle = direction
						with instance_create(x,y,Deflect)
						{
							image_angle = othr.direction
							sprite_index=sprGuardianDeflect;
						}
					}
			}
			else
			{
				snd_play(sndProjectileDestroy,0.1,true);
				BackCont.shake += 1;
				with othr
					instance_destroy()
			}
		}
	}
}